/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSignalMapperSlots.h"

QSignalMapperSlots::QSignalMapperSlots( QObject *parent ) : QObject( parent )
{
}

QSignalMapperSlots::~QSignalMapperSlots()
{
}

void QSignalMapperSlots::mapped( int i )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "mapped(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QSIGNALMAPPER" );
    PHB_ITEM pi = hb_itemPutNI( NULL, i );

    hb_vmEvalBlockV( cb, 2, psender, pi );

    hb_itemRelease( psender );
    hb_itemRelease( pi );
  }
}

void QSignalMapperSlots::mapped( const QString & s )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "mapped(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QSIGNALMAPPER" );
    PHB_ITEM ps = hb_itemPutC( NULL, QSTRINGTOSTRING(s) );

    hb_vmEvalBlockV( cb, 2, psender, ps );

    hb_itemRelease( psender );
    hb_itemRelease( ps );
  }
}

void QSignalMapperSlots::mapped( QWidget * w )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "mapped(QWidget*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QSIGNALMAPPER" );
    PHB_ITEM pw = Qt4xHb::Signals_return_qobject( (QObject *) w, "QWIDGET" );

    hb_vmEvalBlockV( cb, 2, psender, pw );

    hb_itemRelease( psender );
    hb_itemRelease( pw );
  }
}

void QSignalMapperSlots::mapped( QObject * o )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "mapped(QObject*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QSIGNALMAPPER" );
    PHB_ITEM po = Qt4xHb::Signals_return_qobject( (QObject *) o, "QOBJECT" );

    hb_vmEvalBlockV( cb, 2, psender, po );

    hb_itemRelease( psender );
    hb_itemRelease( po );
  }
}

void QSignalMapperSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSignalMapper * obj = (QSignalMapper *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSignalMapperSlots * s = QCoreApplication::instance()->findChild<QSignalMapperSlots *>();

    if( s == NULL )
    {
      s = new QSignalMapperSlots();
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
