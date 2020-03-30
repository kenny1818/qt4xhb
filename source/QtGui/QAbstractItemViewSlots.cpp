/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractItemViewSlots.h"

QAbstractItemViewSlots::QAbstractItemViewSlots(QObject *parent) : QObject(parent)
{
}

QAbstractItemViewSlots::~QAbstractItemViewSlots()
{
}
void QAbstractItemViewSlots::activated( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTITEMVIEW" );
    PHB_ITEM pindex = Signals_return_object( (void *) &index, "QMODELINDEX" );
    hb_vmEvalBlockV( cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
void QAbstractItemViewSlots::clicked( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTITEMVIEW" );
    PHB_ITEM pindex = Signals_return_object( (void *) &index, "QMODELINDEX" );
    hb_vmEvalBlockV( cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
void QAbstractItemViewSlots::doubleClicked( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTITEMVIEW" );
    PHB_ITEM pindex = Signals_return_object( (void *) &index, "QMODELINDEX" );
    hb_vmEvalBlockV( cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
void QAbstractItemViewSlots::entered( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "entered(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTITEMVIEW" );
    PHB_ITEM pindex = Signals_return_object( (void *) &index, "QMODELINDEX" );
    hb_vmEvalBlockV( cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
void QAbstractItemViewSlots::pressed( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTITEMVIEW" );
    PHB_ITEM pindex = Signals_return_object( (void *) &index, "QMODELINDEX" );
    hb_vmEvalBlockV( cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
void QAbstractItemViewSlots::viewportEntered()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "viewportEntered()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTITEMVIEW" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QAbstractItemViewSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractItemView * obj = (QAbstractItemView *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemViewSlots * s = QCoreApplication::instance()->findChild<QAbstractItemViewSlots *>();

    if( s == NULL )
    {
      s = new QAbstractItemViewSlots();
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
