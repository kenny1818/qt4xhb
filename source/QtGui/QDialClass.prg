/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDial INHERIT QAbstractSlider

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD notchSize
   METHOD notchTarget
   METHOD notchesVisible
   METHOD setNotchTarget
   METHOD wrapping
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setNotchesVisible
   METHOD setWrapping

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDial
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDial>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDial ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDIAL_NEW )
{
  QDial * o = new QDial ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QDIAL_DELETE )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

/*
int notchSize () const
*/
HB_FUNC_STATIC( QDIAL_NOTCHSIZE )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->notchSize () );
  }
}

/*
qreal notchTarget () const
*/
HB_FUNC_STATIC( QDIAL_NOTCHTARGET )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->notchTarget () );
  }
}

/*
bool notchesVisible () const
*/
HB_FUNC_STATIC( QDIAL_NOTCHESVISIBLE )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->notchesVisible () );
  }
}

/*
void setNotchTarget ( double target )
*/
HB_FUNC_STATIC( QDIAL_SETNOTCHTARGET )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNotchTarget ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool wrapping () const
*/
HB_FUNC_STATIC( QDIAL_WRAPPING )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->wrapping () );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QDIAL_MINIMUMSIZEHINT )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QDIAL_SIZEHINT )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setNotchesVisible ( bool visible )
*/
HB_FUNC_STATIC( QDIAL_SETNOTCHESVISIBLE )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNotchesVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWrapping ( bool on )
*/
HB_FUNC_STATIC( QDIAL_SETWRAPPING )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWrapping ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
