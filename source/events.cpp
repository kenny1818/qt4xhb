/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "events.h"

static Events *s = NULL;

/*
  constructor
*/
Events::Events(QObject *parent) : QObject(parent)
{
}

/*
  destructor
*/
Events::~Events()
{
  Events_release_codeblocks ();
}

/*
  filtro de eventos
*/
bool Events::eventFilter(QObject *obj, QEvent *event)
{
  QEvent::Type eventtype = event->type();
  int found = -1;
  for (int i = 0; i < list1.size(); ++i)
  {
    if( ( (QObject *) list1.at(i) == (QObject *) obj ) &&
        ( (QEvent::Type) list2.at(i) == (QEvent::Type) eventtype ) &&
        ( (bool) list4.at(i) == true ) )
        { found = i; break; }
  }
  // se n�o encontrado na lista, aceita o evento
  if( found == -1 )
  {
    return false;
  }
  // executa bloco de c�digo/fun��o
  PHB_ITEM pObject = hb_itemPutPtr( NULL, (QObject *) obj );
  PHB_ITEM pEvent = hb_itemPutPtr( NULL, (QEvent *) event );
  bool ret = hb_itemGetL( hb_vmEvalBlockV( (PHB_ITEM) list3.at(found), 2, pObject, pEvent ) );
  hb_itemRelease( pObject );
  hb_itemRelease( pEvent );
  // retorna resultado
  // .t.: interrompe processamento do evento
  // .f.: continua processamento do evento
  return ret;
}

/*
  Conecta um determinado evento com um objeto
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: id do evento
  Par�metro 3: codeblock
  Retorna .t. se a conex�o foi bem sucedida ou .f. se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do
  usu�rio
*/

bool Events_connect_event ( QObject * object, int type, PHB_ITEM codeblock )
{
  int i;
  // par�metros da fun��o
  //QObject * object = (QObject *) hb_parptr(1);
  //int type = hb_parni(2);
  //PHB_ITEM codeblock = hb_itemNew( hb_param( 3, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  // cria objeto da classe Events, caso n�o tenha sido criado
  if( s == NULL )
  {
    s = new Events(QCoreApplication::instance());
  }
  // instala eventfilter, se n�o houver nenhum evento
  if( s->list1.contains( object ) == false )
  {
    object->installEventFilter(s);
  }
  // verifica se j� est� na lista
  int found = -1;
  for (i = 0; i < s->list1.size(); ++i)
  {
    if( ( (QObject *) s->list1.at(i) == (QObject *) object ) && ( (QEvent::Type) s->list2.at(i) == (QEvent::Type) type ) && ( (bool) s->list4.at(i) == true ) )
    {
      found = i;
      hb_itemRelease( codeblock );
      break;
    }
  }
  bool ret = false;
  // se nao encontrado na lista, adiciona
  if( found == -1 )
  {
    // procura por posi��o livre
    i = s->list4.indexOf( false );
    if( i == -1 ) // nao encontrou posicao livre
    {
      // adiciona evento na lista de eventos
      s->list1 << object;
      s->list2 << (QEvent::Type) type;
      s->list3 << codeblock;
      s->list4 << true;
    }
    else // encontrou posicao livre
    {
      // coloca na posi��o livre
      s->list1[i] = object;
      s->list2[i] = (QEvent::Type) type;
      s->list3[i] = codeblock;
      s->list4[i] = true;
    }
    ret = true;
  }
  // retorna o resultado da opera��o
  //hb_retl( ret );
  return ret;
}

/*
  Desconecta um determinado evento
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: id do evento
  Retorna .t. se a desconex�o foi bem sucedida ou .f. se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do
  usu�rio
*/

bool Events_disconnect_event ( QObject * object, int type )
{
  int i;
  // par�metros da fun��o
  //QObject * object = (QObject *) hb_parptr(1);
  //int type = hb_parni(2);
  // cria objeto da classe Events, caso n�o tenha sido criado
  if( s == NULL )
  {
    s = new Events(QCoreApplication::instance());
  }
  bool ret = false;
  // remove evento da lista de eventos
  for (i = 0; i < s->list1.size(); ++i)
  {
    if( (QObject *) s->list1.at(i) == (QObject *) object )
    {
      if( ( (QEvent::Type) s->list2.at(i) == (QEvent::Type) type ) && ( (bool) s->list4.at(i) == true ) )
      {
        hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
        s->list1[i] = NULL;
        s->list2[i] = (QEvent::Type) 0;
        s->list3[i] = NULL;
        s->list4[i] = false;
        ret = true;
      }
    }
  }
  //
  // desinstala eventfilter, se n�o houver mais nenhum evento
  if( s->list1.contains( object ) == false )
  {
    object->removeEventFilter(s);
  }
  // retorna o resultado da opera��o
  //hb_retl( ret );
  return ret;
}

/*
  Libera todos os codeblocks relacionados com eventos
*/

void Events_release_codeblocks ()
{
  if( s )
  {
    for (int i = 0; i < s->list1.size(); ++i)
    {
      if( (bool) s->list4.at(i) == true )
      {
        hb_itemRelease((PHB_ITEM) s->list3.at(i) );
        s->list1[i] = NULL;
        s->list2[i] = QEvent::None;
        s->list3[i] = NULL;
        s->list4[i] = false;
      }
    }
  }
}

/*
  Libera todos os codeblocks relacionados com eventos do objeto 'obj',
  incluindo os eventos ligados aos filhos, netos, bisnetos, etc... (se children = true).
*/

void Events_disconnect_all_events (QObject * obj, bool children)
{
  if( s )
  {
    if( !children )
    {
      // percorre toda a lista de eventos
      for (int i = 0; i < s->list1.size(); ++i)
      {
        // elimina eventos ativos (true) ligados ao objeto (obj)
        if( ( (QObject *) s->list1.at(i) == (QObject *) obj ) && ( (bool) s->list4.at(i) == true ) )
        {
          hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
          s->list1[i] = NULL;
          s->list2[i] = QEvent::None;
          s->list3[i] = NULL;
          s->list4[i] = false;
        }
      }
      // desinstala eventfilter do objeto 'obj'
      if( s->list1.contains( obj ) == false )
      {
        obj->removeEventFilter(s);
      }
    }
    else
    {
      // obt�m a lista de filhos, netos, bisnetos, etc...
      QList<QObject *> list = obj->findChildren<QObject *>();
      // adiciona o pai na lista
      list << obj;
      // percorre toda a lista de objetos
      for (int i = 0; i < list.size(); ++i)
      {
        // percorre toda a lista de eventos
        for (int ii = 0; ii < s->list1.size(); ++ii)
        {
          // elimina eventos ativos (true) ligados ao objeto list.at(i)
          if( ( (QObject *) s->list1.at(ii) == (QObject *) list.at(i) ) && ( (bool) s->list4.at(ii) == true ) )
          {
            hb_itemRelease( (PHB_ITEM) s->list3.at(ii) );
            s->list1[ii] = NULL;
            s->list2[ii] = QEvent::None;
            s->list3[ii] = NULL;
            s->list4[ii] = false;
          }
        }
        // desinstala eventfilter do objeto 'list.at(i)'
        if( s->list1.contains( list.at(i) ) == false )
        {
          list.at(i)->removeEventFilter(s);
        }
      }
    }
  }
}

/*
  Retorna o tamanho da lista de eventos.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

HB_FUNC( QTXHB_EVENTS_SIZE )
{
  if( s )
  {
    hb_retni( s->list1.size() );
  }
  else
  {
    hb_retni( 0 );
  }
}

/*
  Retorna o n�mero de eventos ativos na lista de eventos.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

HB_FUNC( QTXHB_EVENTS_SIZE_ACTIVE )
{
  if( s )
  {
    // inicializa contador
    int count = 0;
    // percorre toda a lista de eventos
    for (int i = 0; i < s->list1.size(); ++i)
    {
      if( s->list4.at(i) )
      {
        ++count;
      }
    }
    hb_retni( count );
  }
  else
  {
    hb_retni( 0 );
  }
}
