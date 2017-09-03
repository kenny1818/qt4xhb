/*

  Qt4xHb - biblioteca de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "events.h"

static Events *s = NULL;

Events::Events(QObject *parent) : QObject(parent)
{
}
Events::~Events()
{
  Events_release_codeblocks ();
}
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

//HB_FUNC( QT_QEVENTFILTER )
//{
//  if( s == NULL )
//  {
//    s = new Events(QCoreApplication::instance());
//  }
//  hb_retptr( (Events *) s );
//}

/*
  Conecta um determinado evento com um objeto
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: id do evento
  Par�metro 3: codeblock
  Retorna .t. se a conex�o foi bem sucedida ou .f. se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do
  usu�rio
*/

HB_FUNC( QT_CONNECT_EVENT )
{
  int i;
  // par�metros da fun��o
  QObject * object = (QObject *) hb_parptr(1);
  int type = hb_parni(2);
  PHB_ITEM codeblock = hb_itemNew( hb_param( 3, HB_IT_BLOCK | HB_IT_SYMBOL ) );
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
  hb_retl( ret );
}

/*
  Desconecta um determinado evento
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: id do evento
  Retorna .t. se a desconex�o foi bem sucedida ou .f. se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do
  usu�rio
*/

HB_FUNC( QT_DISCONNECT_EVENT )
{
  int i;
  // par�metros da fun��o
  QObject * object = (QObject *) hb_parptr(1);
  int type = hb_parni(2);
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
  hb_retl( ret );
}

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
