/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPIXMAP
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsPixmapItem INHERIT QGraphicsItem

   DATA class_id INIT Class_Id_QGraphicsPixmapItem
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD offset
   METHOD pixmap
   METHOD setOffset1
   METHOD setOffset2
   METHOD setOffset
   METHOD setPixmap
   METHOD setShapeMode
   METHOD setTransformationMode
   METHOD shapeMode
   METHOD transformationMode
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsPixmapItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsPixmapItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsPixmapItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_NEW1 )
{
  QGraphicsPixmapItem * o = NULL;
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsPixmapItem ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_NEW2 )
{
  QGraphicsPixmapItem * o = NULL;
  QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsPixmapItem ( *par1, par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGraphicsPixmapItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSPIXMAPITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQPIXMAP(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSPIXMAPITEM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_DELETE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF offset () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_OFFSET )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->offset () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPixmap pixmap () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_PIXMAP )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap () );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
void setOffset ( const QPointF & offset )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETOFFSET1 )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setOffset ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffset ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETOFFSET2 )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOffset ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setOffset ( const QPointF & offset )
//[2]void setOffset ( qreal x, qreal y )

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSPIXMAPITEM_SETOFFSET1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSPIXMAPITEM_SETOFFSET2 );
  }
}

/*
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETPIXMAP )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPixmap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShapeMode ( ShapeMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETSHAPEMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setShapeMode (  (QGraphicsPixmapItem::ShapeMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTransformationMode ( Qt::TransformationMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETTRANSFORMATIONMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTransformationMode (  (Qt::TransformationMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ShapeMode shapeMode () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SHAPEMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->shapeMode () );
  }
}


/*
Qt::TransformationMode transformationMode () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_TRANSFORMATIONMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->transformationMode () );
  }
}


/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_BOUNDINGRECT )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_CONTAINS )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_ISOBSCUREDBY )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isObscuredBy ( par1 ) );
  }
}


/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_OPAQUEAREA )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_PAINT )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * par3 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paint ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SHAPE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_TYPE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->type () );
  }
}




#pragma ENDDUMP
