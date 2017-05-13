/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QMargins

   DATA pointer
   DATA class_id INIT Class_Id_QMargins
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD isNull
   METHOD left
   METHOD right
   METHOD setBottom
   METHOD setLeft
   METHOD setRight
   METHOD setTop
   METHOD top
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMargins
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMargins>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMargins ()
*/
HB_FUNC_STATIC( QMARGINS_NEW1 )
{
  QMargins * o = NULL;
  o = new QMargins ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QMargins ( int left, int top, int right, int bottom )
*/
HB_FUNC_STATIC( QMARGINS_NEW2 )
{
  QMargins * o = NULL;
  o = new QMargins ( PINT(1), PINT(2), PINT(3), PINT(4) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QMargins ()
//[2]QMargins ( int left, int top, int right, int bottom )

HB_FUNC_STATIC( QMARGINS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMARGINS_NEW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QMARGINS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMARGINS_DELETE )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bottom () const
*/
HB_FUNC_STATIC( QMARGINS_BOTTOM )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->bottom () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QMARGINS_ISNULL )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull () );
  }
}


/*
int left () const
*/
HB_FUNC_STATIC( QMARGINS_LEFT )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->left () );
  }
}


/*
int right () const
*/
HB_FUNC_STATIC( QMARGINS_RIGHT )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->right () );
  }
}


/*
void setBottom ( int bottom )
*/
HB_FUNC_STATIC( QMARGINS_SETBOTTOM )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBottom ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLeft ( int left )
*/
HB_FUNC_STATIC( QMARGINS_SETLEFT )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLeft ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRight ( int right )
*/
HB_FUNC_STATIC( QMARGINS_SETRIGHT )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop ( int Top )
*/
HB_FUNC_STATIC( QMARGINS_SETTOP )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTop ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int top () const
*/
HB_FUNC_STATIC( QMARGINS_TOP )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->top () );
  }
}


HB_FUNC_STATIC( QMARGINS_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMARGINS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMARGINS_NEWFROM );
}

HB_FUNC_STATIC( QMARGINS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMARGINS_NEWFROM );
}

HB_FUNC_STATIC( QMARGINS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMARGINS_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
