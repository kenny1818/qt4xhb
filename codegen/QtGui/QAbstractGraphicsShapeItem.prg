$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPEN
REQUEST QPAINTERPATH
#endif

CLASS QAbstractGraphicsShapeItem INHERIT QGraphicsItem

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD brush
   METHOD pen
   METHOD setBrush
   METHOD setPen
   METHOD isObscuredBy
   METHOD opaqueArea

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractGraphicsShapeItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QBrush>
#include <QPen>

$deleteMethod

/*
QBrush brush () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_BRUSH )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brush () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
QPen pen () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_PEN )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPen * ptr = new QPen( obj->pen () );
    _qt4xhb_createReturnClass ( ptr, "QPEN", true );
  }
}

/*
void setBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETBRUSH )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBrush ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETPEN )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPen ( *PQPEN(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_ISOBSCUREDBY )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isObscuredBy ( par1 ) );
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_OPAQUEAREA )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

#pragma ENDDUMP
