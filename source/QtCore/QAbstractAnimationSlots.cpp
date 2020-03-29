/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractAnimationSlots.h"

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
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTANIMATION" );
    PHB_ITEM pcurrentLoop = hb_itemPutNI( NULL, currentLoop );
    hb_vmEvalBlockV( cb, 2, psender, pcurrentLoop );
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
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTANIMATION" );
    PHB_ITEM pnewDirection = hb_itemPutNI( NULL, (int) newDirection );
    hb_vmEvalBlockV( cb, 2, psender, pnewDirection );
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
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTANIMATION" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QAbstractAnimationSlots::stateChanged( QAbstractAnimation::State newState, QAbstractAnimation::State oldState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTANIMATION" );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );
    PHB_ITEM poldState = hb_itemPutNI( NULL, (int) oldState );
    hb_vmEvalBlockV( cb, 3, psender, pnewState, poldState );
    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
    hb_itemRelease( poldState );
  }
}

void QAbstractAnimationSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractAnimationSlots * s = QCoreApplication::instance()->findChild<QAbstractAnimationSlots *>();

    if( s == NULL )
    {
      s = new QAbstractAnimationSlots();
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
