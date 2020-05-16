/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "events.h"

static Events *s_events = NULL;

/*
  constructor
*/
Events::Events( QObject *parent ) : QObject( parent )
{
  m_list1 = new QVector<QObject*>( 1000, NULL );             // armazena ponteiro do objeto
  m_list2 = new QVector<QEvent::Type>( 1000, QEvent::None ); // armazena tipo de evento
  m_list3 = new QVector<PHB_ITEM>( 1000, NULL );             // armazena codeblock
  m_mutex = new QMutex();
}

/*
  destructor
*/
Events::~Events()
{
  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( m_list1->at(i) )
    {
      hb_itemRelease( m_list3->at(i) );
    }
  }

  delete m_list1;
  delete m_list2;
  delete m_list3;
  delete m_mutex;
}

/*
  filtro de eventos
*/
bool Events::eventFilter( QObject *obj, QEvent *event )
{
  QEvent::Type eventtype = event->type();
  bool result = false;
  int index = -1;

  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == obj ) && ( m_list2->at(i) == eventtype ) )
    {
      index = i;
      break;
    }
  }

  // se n�o encontrado na lista, propaga o evento
  if( index != -1 )
  {
    // executa bloco de c�digo/fun��o
    //PHB_ITEM pObject = hb_itemPutPtr( NULL, (QObject *) obj );
    PHB_ITEM pObject = returnQObject( obj, "QOBJECT" );
    //PHB_ITEM pEvent = hb_itemPutPtr( NULL, (QEvent *) event );
    PHB_ITEM pEvent = returnQEvent( event, "QEVENT" );
    result = hb_itemGetL( hb_vmEvalBlockV( m_list3->at(index), 2, pObject, pEvent ) );
    hb_itemRelease( pObject );
    hb_itemRelease( pEvent );
  }

  // retorna resultado
  // true/.t.: interrompe processamento do evento
  // false/.f.: continua processamento do evento
  return result;
}

//void Events::lock()
//{
//  m_mutex->lock();
//}

//void Events::unlock()
//{
//  m_mutex->unlock();
//}

/*
  Conecta um determinado evento com um objeto
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: id do evento
  Par�metro 3: codeblock
  Retorna true se a conex�o foi bem sucedida ou false se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do usu�rio
*/

//bool Events_connect_event( QObject * object, int type, PHB_ITEM codeblock )
bool Events::connectEvent( QObject * object, int type, PHB_ITEM codeblock )
{
  bool result = false;
  bool found = false;

  // instala eventfilter, se n�o houver nenhum evento
  if( m_list1->contains( object ) == false )
  {
    object->installEventFilter(s_events);
  }

  m_mutex->lock();

  // verifica se j� est� na lista
  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == object ) && ( m_list2->at(i) == (QEvent::Type) type ) )
    {
      found = true;
      hb_itemRelease( codeblock );
      break;
    }
  }

  // se nao encontrado na lista, adiciona
  if( !found )
  {
    // procura por posi��o livre
    int index = m_list1->indexOf( NULL );

    if( index == -1 ) // nao encontrou posicao livre
    {
      // adiciona evento na lista de eventos
      m_list1->append( object );
      m_list2->append( (QEvent::Type) type );
      m_list3->append( codeblock );
    }
    else // encontrou posicao livre
    {
      // coloca na posi��o livre
      m_list1->replace( index, object );
      m_list2->replace( index, (QEvent::Type) type );
      m_list3->replace( index, codeblock );
    }

    result = true;
  }

  m_mutex->unlock();

  return result;
}

bool Events_connect_event( QObject * object, int type, PHB_ITEM codeblock )
{
  return s_events->connectEvent( object, type, codeblock );
}

/*
  Desconecta um determinado evento
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: id do evento
  Retorna true se a desconex�o foi bem sucedida ou false se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do usu�rio
*/

//bool Events_disconnect_event( QObject * object, int type )
bool Events::disconnectEvent( QObject * object, int type )
{
  bool result = false;

  // remove evento da lista de eventos
  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == object ) && ( m_list2->at(i) == (QEvent::Type) type ) )
    {
      hb_itemRelease( m_list3->at(i) );
      m_list1->replace( i, NULL );
      m_list2->replace( i, QEvent::None );
      m_list3->replace( i, NULL );
      result = true;
    }
  }

  // desinstala eventfilter, se n�o houver mais nenhum evento
  if( m_list1->contains( object ) == false )
  {
    object->removeEventFilter(s_events);
  }

  return result;
}

bool Events_disconnect_event( QObject * object, int type )
{
  return s_events->disconnectEvent( object, type );
}

/*
  Libera todos os codeblocks relacionados com eventos do objeto 'obj',
  incluindo os eventos ligados aos filhos, netos, bisnetos, etc... (se children = true).
*/

//void Events_disconnect_all_events( QObject * obj, bool children )
void Events::disconnectAllEvents( QObject * obj, bool children )
{
  if( !children )
  {
    // percorre toda a lista de eventos
    const int listsize = m_list1->size();
    for( int i = 0; i < listsize; ++i )
    {
      // elimina eventos ativos (true) ligados ao objeto (obj)
      if( m_list1->at(i) == obj )
      {
        hb_itemRelease( m_list3->at(i) );
        m_list1->replace( i, NULL );
        m_list2->replace( i, QEvent::None );
        m_list3->replace( i, NULL );
      }
    }
    // desinstala eventfilter do objeto 'obj'
    if( m_list1->contains( obj ) == false )
    {
      obj->removeEventFilter(s_events);
    }
  }
  else
  {
    // obt�m a lista de filhos, netos, bisnetos, etc...
    QList<QObject *> objectList = obj->findChildren<QObject *>();

    // adiciona o pai na lista
    objectList << obj;

    // percorre toda a lista de objetos
    const int listsize = objectList.size();
    for( int i = 0; i < listsize; ++i )
    {
      QObject * currentObject = objectList.at(i);

      // percorre toda a lista de eventos
      const int listsize2 = m_list1->size();
      for( int ii = 0; ii < listsize2; ++ii )
      {
        // elimina eventos ativos (true) ligados ao objeto list.at(i)
        if( m_list1->at(ii) == currentObject )
        {
          hb_itemRelease( m_list3->at(ii) );
          m_list1->replace( ii, NULL );
          m_list2->replace( ii, QEvent::None );
          m_list3->replace( ii, NULL );
        }
      }

      // desinstala eventfilter do objeto 'list.at(i)'
      if( m_list1->contains( currentObject ) == false )
      {
        currentObject->removeEventFilter(s_events);
      }
    }
  }
}

void Events_disconnect_all_events( QObject * obj, bool children )
{
  s_events->disconnectAllEvents( obj, children );
}

/*
  Retorna o tamanho da lista de eventos.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

int Events::size()
{
  return m_list1->size();
}

HB_FUNC( QTXHB_EVENTS_SIZE )
{
  hb_retni( s_events->size() );
}

/*
  Retorna o n�mero de eventos ativos na lista de eventos.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

int Events::active()
{
  int count = 0;

  // percorre toda a lista de eventos
  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( m_list1->at(i) )
    {
      ++count;
    }
  }

  return count;
}

HB_FUNC( QTXHB_EVENTS_ACTIVE )
{
  hb_retni( s_events->active() );
}

HB_FUNC( QTXHB_EVENTS_SIZE_ACTIVE ) // deprecated
{
  hb_retni( s_events->active() );
}

//PHB_ITEM Events_return_object( QEvent * ptr, const char * classname )
PHB_ITEM Events::returnQEvent( QEvent * ptr, const char * classname )
{
  static int eventEnumIndex = QEvent::staticMetaObject.indexOfEnumerator("Type");

  QString eventname = QEvent::staticMetaObject.enumerator(eventEnumIndex).valueToKey(ptr->type());

  PHB_DYNS pDynSym;

  QString name = "q" + eventname + "event";

  pDynSym = hb_dynsymFindName( (const char *) name.toUpper().toLatin1().data() );

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QEvent *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

//PHB_ITEM Events_return_qobject( QObject * ptr, const char * classname )
PHB_ITEM Events::returnQObject( QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

#include "hbvm.h"
#include "hbinit.h"

static void qt4xhb_events_init( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  if( s_events == NULL )
  {
    s_events = new Events();
  }
}

static void qt4xhb_events_exit( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  delete s_events;
}

HB_CALL_ON_STARTUP_BEGIN( _qt4xhb_events_init_ )
  hb_vmAtInit( qt4xhb_events_init, NULL );
  hb_vmAtExit( qt4xhb_events_exit, NULL );
HB_CALL_ON_STARTUP_END( _qt4xhb_events_init_ )

#if defined( HB_PRAGMA_STARTUP )
  #pragma startup _qt4xhb_events_init_
#elif defined( HB_DATASEG_STARTUP )
  #define HB_DATASEG_BODY HB_DATASEG_FUNC( _qt4xhb_events_init_ )
  #include "hbiniseg.h"
#endif
