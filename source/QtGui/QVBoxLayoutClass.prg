/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QVBoxLayout INHERIT QBoxLayout

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVBoxLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QVBoxLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QVBoxLayout ()
*/
void QVBoxLayout_new1 ()
{
  QVBoxLayout * o = new QVBoxLayout ();
  _qt4xhb_returnNewObject( o, false );
}

/*
QVBoxLayout ( QWidget * parent )
*/
void QVBoxLayout_new2 ()
{
  QVBoxLayout * o = new QVBoxLayout ( PQWIDGET(1) );
  _qt4xhb_returnNewObject( o, false );
}

//[1]QVBoxLayout ()
//[2]QVBoxLayout ( QWidget * parent )

HB_FUNC_STATIC( QVBOXLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVBoxLayout_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QVBoxLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVBOXLAYOUT_DELETE )
{
  QVBoxLayout * obj = (QVBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
