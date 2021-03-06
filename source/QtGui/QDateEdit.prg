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

CLASS QDateEdit INHERIT QDateTimeEdit

   METHOD new

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDateEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QDateEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QDateEdit ( QWidget * parent = 0 )
*/
void QDateEdit_new1()
{
  QDateEdit * obj = new QDateEdit( OPQWIDGET(1,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QDateEdit ( const QDate & date, QWidget * parent = 0 )
*/
void QDateEdit_new2()
{
  QDateEdit * obj = new QDateEdit( *PQDATE(1), OPQWIDGET(2,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
[1]QDateEdit ( QWidget * parent = 0 )
[2]QDateEdit ( const QDate & date, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QDATEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QDateEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDateEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
