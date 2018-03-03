/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAxObjectSlots.h"

static QAxObjectSlots * s = NULL;

QAxObjectSlots::QAxObjectSlots(QObject *parent) : QObject(parent)
{
}

QAxObjectSlots::~QAxObjectSlots()
{
}
void QAxObjectSlots::exception( int code, const QString & source, const QString & desc, const QString & help )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "exception(int,QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM psource = hb_itemPutC( NULL, QSTRINGTOSTRING(source) );
    PHB_ITEM pdesc = hb_itemPutC( NULL, QSTRINGTOSTRING(desc) );
    PHB_ITEM phelp = hb_itemPutC( NULL, QSTRINGTOSTRING(help) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcode, psource, pdesc, phelp );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
    hb_itemRelease( psource );
    hb_itemRelease( pdesc );
    hb_itemRelease( phelp );
  }
}
void QAxObjectSlots::propertyChanged( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "propertyChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}
void QAxObjectSlots::signal( const QString & name, int argc, void * argv )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signal(QString,int,void*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    PHB_ITEM pargc = hb_itemPutNI( NULL, argc );
    PHB_ITEM pargv = hb_itemPutPtr( NULL, (void *) argv );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pname, pargc, pargv );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( pargc );
    hb_itemRelease( pargv );
  }
}

void QAxObjectSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QAxObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
