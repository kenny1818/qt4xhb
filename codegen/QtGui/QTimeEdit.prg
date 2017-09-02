/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTimeEdit INHERIT QDateTimeEdit

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTimeEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTimeEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTimeEdit ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTIMEEDIT_NEW1 )
{
  QTimeEdit * o = new QTimeEdit ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTIMEEDIT_NEW2 )
{
  QTimeEdit * o = new QTimeEdit ( *PQTIME(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTimeEdit ( QWidget * parent = 0 )
//[2]QTimeEdit ( const QTime & time, QWidget * parent = 0 )

HB_FUNC_STATIC( QTIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTIMEEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTIMEEDIT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
