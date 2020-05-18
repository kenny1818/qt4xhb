/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractVideoSurfaceSlots.h"

QAbstractVideoSurfaceSlots::QAbstractVideoSurfaceSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractVideoSurfaceSlots::~QAbstractVideoSurfaceSlots()
{
}

void QAbstractVideoSurfaceSlots::activeChanged( bool active )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "activeChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTVIDEOSURFACE" );
    PHB_ITEM pactive = hb_itemPutL( NULL, active );

    hb_vmEvalBlockV( cb, 2, psender, pactive );

    hb_itemRelease( psender );
    hb_itemRelease( pactive );
  }
}

void QAbstractVideoSurfaceSlots::surfaceFormatChanged( const QVideoSurfaceFormat & format )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "surfaceFormatChanged(QVideoSurfaceFormat)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTVIDEOSURFACE" );
    PHB_ITEM pformat = Qt4xHb::Signals_return_object( (void *) &format, "QVIDEOSURFACEFORMAT" );

    hb_vmEvalBlockV( cb, 2, psender, pformat );

    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}

void QAbstractVideoSurfaceSlots::supportedFormatsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "supportedFormatsChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTVIDEOSURFACE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractVideoSurfaceSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractVideoSurfaceSlots * s = QCoreApplication::instance()->findChild<QAbstractVideoSurfaceSlots *>();

    if( s == NULL )
    {
      s = new QAbstractVideoSurfaceSlots();
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
