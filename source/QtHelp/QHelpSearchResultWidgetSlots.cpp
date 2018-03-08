/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpSearchResultWidgetSlots.h"

static QHelpSearchResultWidgetSlots * s = NULL;

QHelpSearchResultWidgetSlots::QHelpSearchResultWidgetSlots(QObject *parent) : QObject(parent)
{
}

QHelpSearchResultWidgetSlots::~QHelpSearchResultWidgetSlots()
{
}
void QHelpSearchResultWidgetSlots::requestShowLink( const QUrl & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestShowLink(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHELPSEARCHRESULTWIDGET" );
    PHB_ITEM plink = Signals_return_object( (void *) &link, "QURL" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void QHelpSearchResultWidgetSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QHelpSearchResultWidgetSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
