/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTcpServerSlots.h"

QTcpServerSlots::QTcpServerSlots(QObject *parent) : QObject(parent)
{
}

QTcpServerSlots::~QTcpServerSlots()
{
}
void QTcpServerSlots::newConnection()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "newConnection()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTCPSERVER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QTcpServerSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QTcpServerSlots * s = QCoreApplication::instance()->findChild<QTcpServerSlots *>();

    if( s == NULL )
    {
      s = new QTcpServerSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
