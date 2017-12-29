/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsRectItem INHERIT QAbstractGraphicsShapeItem

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD rect
   METHOD setRect1
   METHOD setRect2
   METHOD setRect
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsRectItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsRectItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsRectItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_NEW1 )
{
  QGraphicsRectItem * o = new QGraphicsRectItem ( OPQGRAPHICSITEM(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsRectItem ( const QRectF & rect, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_NEW2 )
{
  QGraphicsRectItem * o = new QGraphicsRectItem ( *PQRECTF(1), OPQGRAPHICSITEM(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsRectItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_NEW3 )
{
  QGraphicsRectItem * o = new QGraphicsRectItem ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), OPQGRAPHICSITEM(5,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGraphicsRectItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsRectItem ( const QRectF & rect, QGraphicsItem * parent = 0 )
//[3]QGraphicsRectItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSRECTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSRECTITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSRECTITEM_NEW2 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQGRAPHICSITEM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSRECTITEM_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSRECTITEM_DELETE )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QRectF rect () const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_RECT )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void setRect ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_SETRECT1 )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRect ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRect ( qreal x, qreal y, qreal width, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_SETRECT2 )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRect ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setRect ( const QRectF & rect )
//[2]void setRect ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QGRAPHICSRECTITEM_SETRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSRECTITEM_SETRECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSRECTITEM_SETRECT2 );
  }
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_BOUNDINGRECT )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_CONTAINS )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINTF(1) ) );
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_ISOBSCUREDBY )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isObscuredBy ( par1 ) );
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_OPAQUEAREA )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_PAINT )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_SHAPE )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_TYPE )
{
  QGraphicsRectItem * obj = (QGraphicsRectItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP
