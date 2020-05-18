/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QTranslator INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD load
   METHOD translate

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTranslator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QTranslator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtCore/QLocale>

/*
QTranslator(QObject * parent = 0)
*/
HB_FUNC_STATIC( QTRANSLATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QTranslator * obj = new QTranslator( OPQOBJECT(1,0) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTRANSLATOR_DELETE )
{
  QTranslator * obj = (QTranslator *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isEmpty() const
*/
HB_FUNC_STATIC( QTRANSLATOR_ISEMPTY )
{
  QTranslator * obj = (QTranslator *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
*/
void QTranslator_load1()
{
  QTranslator * obj = (QTranslator *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load( PQSTRING(1), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()) ) );
  }
}

/*
bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
*/
void QTranslator_load2()
{
  QTranslator * obj = (QTranslator *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load( *PQLOCALE(1), PQSTRING(2), OPQSTRING(3,QString()), OPQSTRING(4,QString()), OPQSTRING(5,QString()) ) );
  }
}

/*
bool load(const uchar * data, int len, const QString & directory = QString())
*/

/*
[1]bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
[2]bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
[3]bool load(const uchar * data, int len, const QString & directory = QString())
*/

HB_FUNC_STATIC( QTRANSLATOR_LOAD )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    QTranslator_load1();
  }
  else if( ISBETWEEN(2,5) && ISQLOCALE(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISCHAR(5)||ISNIL(5)) )
  {
    QTranslator_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QString translate(const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1) const
*/
HB_FUNC_STATIC( QTRANSLATOR_TRANSLATE )
{
  QTranslator * obj = (QTranslator *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,4) && ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
    {
#endif
      RQSTRING( obj->translate( PCONSTCHAR(1), PCONSTCHAR(2), OPCONSTCHAR(3,0), OPINT(4,-1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
