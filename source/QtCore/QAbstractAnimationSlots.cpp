/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractAnimationSlots.h"

static QAbstractAnimationSlots * s = NULL;

QAbstractAnimationSlots::QAbstractAnimationSlots(QObject *parent) : QObject(parent)
{
}

QAbstractAnimationSlots::~QAbstractAnimationSlots()
{
}
void QAbstractAnimationSlots::currentLoopChanged( int currentLoop )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentLoopChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pcurrentLoop = hb_itemPutNI( NULL, currentLoop );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcurrentLoop );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrentLoop );
  }
}
void QAbstractAnimationSlots::directionChanged( QAbstractAnimation::Direction newDirection )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directionChanged(QAbstractAnimation::Direction)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pnewDirection = hb_itemPutNI( NULL, (int) newDirection );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewDirection );
    hb_itemRelease( psender );
    hb_itemRelease( pnewDirection );
  }
}
void QAbstractAnimationSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QAbstractAnimationSlots::stateChanged( QAbstractAnimation::State newState, QAbstractAnimation::State oldState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );
    PHB_ITEM poldState = hb_itemPutNI( NULL, (int) oldState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pnewState, poldState );
    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
    hb_itemRelease( poldState );
  }
}

void QAbstractAnimationSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QAbstractAnimationSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
