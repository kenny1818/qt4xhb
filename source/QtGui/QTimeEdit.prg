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

CLASS QTimeEdit INHERIT QDateTimeEdit

   METHOD new

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTimeEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTimeEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QTimeEdit ( QWidget * parent = 0 )
*/
void QTimeEdit_new1()
{
  QTimeEdit * obj = new QTimeEdit( OPQWIDGET(1,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/
void QTimeEdit_new2()
{
  QTimeEdit * obj = new QTimeEdit( *PQTIME(1), OPQWIDGET(2,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
[1]QTimeEdit ( QWidget * parent = 0 )
[2]QTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QTIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QTimeEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QTimeEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
