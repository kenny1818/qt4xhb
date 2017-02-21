/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QXMLNODEMODELINDEX

CLASS QXmlItem

   DATA pointer
   DATA class_id INIT Class_Id_QXmlItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isAtomicValue
   METHOD isNode
   METHOD isNull
   METHOD toAtomicValue
   METHOD toNodeModelIndex
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlItem>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QXmlItem ()
*/
HB_FUNC_STATIC( QXMLITEM_NEW1 )
{
  QXmlItem * o = NULL;
  o = new QXmlItem (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlItem ( const QXmlItem & other )
*/
HB_FUNC_STATIC( QXMLITEM_NEW2 )
{
  QXmlItem * o = NULL;
  QXmlItem * par1 = (QXmlItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlItem ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlItem ( const QXmlNodeModelIndex & node )
*/
HB_FUNC_STATIC( QXMLITEM_NEW3 )
{
  QXmlItem * o = NULL;
  QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlItem ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlItem ( const QVariant & atomicValue )
*/
HB_FUNC_STATIC( QXMLITEM_NEW4 )
{
  QXmlItem * o = NULL;
  QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlItem ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QXmlItem ()
//[2]QXmlItem ( const QXmlItem & other )
//[3]QXmlItem ( const QXmlNodeModelIndex & node )
//[4]QXmlItem ( const QVariant & atomicValue )

HB_FUNC_STATIC( QXMLITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLITEM_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLITEM(1) )
  {
    HB_FUNC_EXEC( QXMLITEM_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QXMLITEM_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QXMLITEM_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLITEM_DELETE )
{
  QXmlItem * obj = (QXmlItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isAtomicValue () const
*/
HB_FUNC_STATIC( QXMLITEM_ISATOMICVALUE )
{
  QXmlItem * obj = (QXmlItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isAtomicValue (  ) );
  }
}


/*
bool isNode () const
*/
HB_FUNC_STATIC( QXMLITEM_ISNODE )
{
  QXmlItem * obj = (QXmlItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNode (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QXMLITEM_ISNULL )
{
  QXmlItem * obj = (QXmlItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QVariant toAtomicValue () const
*/
HB_FUNC_STATIC( QXMLITEM_TOATOMICVALUE )
{
  QXmlItem * obj = (QXmlItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->toAtomicValue (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QXmlNodeModelIndex toNodeModelIndex () const
*/
HB_FUNC_STATIC( QXMLITEM_TONODEMODELINDEX )
{
  QXmlItem * obj = (QXmlItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNodeModelIndex * ptr = new QXmlNodeModelIndex( obj->toNodeModelIndex (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLNODEMODELINDEX", true );
  }
}


HB_FUNC_STATIC( QXMLITEM_NEWFROM )
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

HB_FUNC_STATIC( QXMLITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLITEM_NEWFROM );
}

HB_FUNC_STATIC( QXMLITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLITEM_NEWFROM );
}

HB_FUNC_STATIC( QXMLITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLITEM_SETSELFDESTRUCTION )
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
