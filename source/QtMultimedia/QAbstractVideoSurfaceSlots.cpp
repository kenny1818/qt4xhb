/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractVideoSurfaceSlots.h"

static QAbstractVideoSurfaceSlots * s = NULL;

QAbstractVideoSurfaceSlots::QAbstractVideoSurfaceSlots(QObject *parent) : QObject(parent)
{
}

QAbstractVideoSurfaceSlots::~QAbstractVideoSurfaceSlots()
{
}
void QAbstractVideoSurfaceSlots::activeChanged( bool active )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTVIDEOSURFACE" );
    PHB_ITEM pactive = hb_itemPutL( NULL, active );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pactive );
    hb_itemRelease( psender );
    hb_itemRelease( pactive );
  }
}
void QAbstractVideoSurfaceSlots::surfaceFormatChanged( const QVideoSurfaceFormat & format )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "surfaceFormatChanged(QVideoSurfaceFormat)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTVIDEOSURFACE" );
    PHB_ITEM pformat = Signals_return_object( (void *) &format, "QVIDEOSURFACEFORMAT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}
void QAbstractVideoSurfaceSlots::supportedFormatsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "supportedFormatsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTVIDEOSURFACE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QAbstractVideoSurfaceSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QAbstractVideoSurfaceSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
