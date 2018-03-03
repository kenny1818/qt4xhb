/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSequentialAnimationGroupSlots.h"

static QSequentialAnimationGroupSlots * s = NULL;

QSequentialAnimationGroupSlots::QSequentialAnimationGroupSlots(QObject *parent) : QObject(parent)
{
}

QSequentialAnimationGroupSlots::~QSequentialAnimationGroupSlots()
{
}
void QSequentialAnimationGroupSlots::currentAnimationChanged( QAbstractAnimation * current )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentAnimationChanged(QAbstractAnimation*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pcurrent = Signals_return_qobject( current, "QABSTRACTANIMATION" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcurrent );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
  }
}

void QSequentialAnimationGroupSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QSequentialAnimationGroupSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
