/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTabWidgetSlots.h"

QTabWidgetSlots::QTabWidgetSlots( QObject *parent ) : QObject( parent )
{
}

QTabWidgetSlots::~QTabWidgetSlots()
{
}

void QTabWidgetSlots::currentChanged( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTABWIDGET" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QTabWidgetSlots::tabCloseRequested( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "tabCloseRequested(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTABWIDGET" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QTabWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTabWidget * obj = (QTabWidget *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QTabWidgetSlots * s = QCoreApplication::instance()->findChild<QTabWidgetSlots *>();

    if( s == NULL )
    {
      s = new QTabWidgetSlots();
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
