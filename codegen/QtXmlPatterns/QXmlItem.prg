$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QXMLNODEMODELINDEX
#endif

CLASS QXmlItem

   DATA pointer
   DATA self_destruction INIT .F.

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

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QXmlItem ()
*/
HB_FUNC_STATIC( QXMLITEM_NEW1 )
{
  QXmlItem * o = new QXmlItem ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlItem ( const QXmlItem & other )
*/
HB_FUNC_STATIC( QXMLITEM_NEW2 )
{
  QXmlItem * o = new QXmlItem ( *PQXMLITEM(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlItem ( const QXmlNodeModelIndex & node )
*/
HB_FUNC_STATIC( QXMLITEM_NEW3 )
{
  QXmlItem * o = new QXmlItem ( *PQXMLNODEMODELINDEX(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlItem ( const QVariant & atomicValue )
*/
HB_FUNC_STATIC( QXMLITEM_NEW4 )
{
  QXmlItem * o = new QXmlItem ( *PQVARIANT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
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
    RBOOL( obj->isAtomicValue () );
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
    RBOOL( obj->isNode () );
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
    RBOOL( obj->isNull () );
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
    QVariant * ptr = new QVariant( obj->toAtomicValue () );
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
    QXmlNodeModelIndex * ptr = new QXmlNodeModelIndex( obj->toNodeModelIndex () );
    _qt4xhb_createReturnClass ( ptr, "QXMLNODEMODELINDEX", true );
  }
}

$extraMethods

#pragma ENDDUMP
