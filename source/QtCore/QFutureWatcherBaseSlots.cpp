/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFutureWatcherBaseSlots.h"

QFutureWatcherBaseSlots::QFutureWatcherBaseSlots(QObject *parent) : QObject(parent)
{
}

QFutureWatcherBaseSlots::~QFutureWatcherBaseSlots()
{
}
void QFutureWatcherBaseSlots::started()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "started()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QFutureWatcherBaseSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QFutureWatcherBaseSlots::canceled()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canceled()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QFutureWatcherBaseSlots::paused()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "paused()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QFutureWatcherBaseSlots::resumed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "resumed()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QFutureWatcherBaseSlots::resultReadyAt( int resultIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "resultReadyAt(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    PHB_ITEM presultIndex = hb_itemPutNI( NULL, resultIndex );
    hb_vmEvalBlockV( cb, 2, psender, presultIndex );
    hb_itemRelease( psender );
    hb_itemRelease( presultIndex );
  }
}
void QFutureWatcherBaseSlots::resultsReadyAt( int beginIndex, int endIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "resultsReadyAt(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    PHB_ITEM pbeginIndex = hb_itemPutNI( NULL, beginIndex );
    PHB_ITEM pendIndex = hb_itemPutNI( NULL, endIndex );
    hb_vmEvalBlockV( cb, 3, psender, pbeginIndex, pendIndex );
    hb_itemRelease( psender );
    hb_itemRelease( pbeginIndex );
    hb_itemRelease( pendIndex );
  }
}
void QFutureWatcherBaseSlots::progressRangeChanged( int minimum, int maximum )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "progressRangeChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    PHB_ITEM pminimum = hb_itemPutNI( NULL, minimum );
    PHB_ITEM pmaximum = hb_itemPutNI( NULL, maximum );
    hb_vmEvalBlockV( cb, 3, psender, pminimum, pmaximum );
    hb_itemRelease( psender );
    hb_itemRelease( pminimum );
    hb_itemRelease( pmaximum );
  }
}
void QFutureWatcherBaseSlots::progressValueChanged( int progressValue )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "progressValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    PHB_ITEM pprogressValue = hb_itemPutNI( NULL, progressValue );
    hb_vmEvalBlockV( cb, 2, psender, pprogressValue );
    hb_itemRelease( psender );
    hb_itemRelease( pprogressValue );
  }
}
void QFutureWatcherBaseSlots::progressTextChanged( const QString & progressText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "progressTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QFUTUREWATCHERBASE" );
    PHB_ITEM pprogressText = hb_itemPutC( NULL, QSTRINGTOSTRING(progressText) );
    hb_vmEvalBlockV( cb, 2, psender, pprogressText );
    hb_itemRelease( psender );
    hb_itemRelease( pprogressText );
  }
}

void QFutureWatcherBaseSlots_connect_signal( const QString & signal, const QString & slot )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFutureWatcherBaseSlots * s = QCoreApplication::instance()->findChild<QFutureWatcherBaseSlots *>();

    if( s == NULL )
    {
      s = new QFutureWatcherBaseSlots();
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
