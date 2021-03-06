/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsObjectSlots.h"

QGraphicsObjectSlots::QGraphicsObjectSlots( QObject *parent ) : QObject( parent )
{
}

QGraphicsObjectSlots::~QGraphicsObjectSlots()
{
}

void QGraphicsObjectSlots::enabledChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "enabledChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSOBJECT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsObjectSlots::opacityChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "opacityChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSOBJECT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsObjectSlots::parentChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "parentChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSOBJECT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsObjectSlots::rotationChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "rotationChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSOBJECT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsObjectSlots::scaleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "scaleChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSOBJECT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsObjectSlots::visibleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "visibleChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSOBJECT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsObjectSlots::xChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "xChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSOBJECT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsObjectSlots::yChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "yChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSOBJECT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsObjectSlots::zChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "zChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QGRAPHICSOBJECT" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QGraphicsObjectSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsObject * obj = (QGraphicsObject *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsObjectSlots * s = QCoreApplication::instance()->findChild<QGraphicsObjectSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsObjectSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt4xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
