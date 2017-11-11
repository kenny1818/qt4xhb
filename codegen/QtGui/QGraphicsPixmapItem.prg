$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPIXMAP
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsPixmapItem INHERIT QGraphicsItem

   METHOD new
   METHOD delete
   METHOD offset
   METHOD pixmap
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

$destructor

#pragma BEGINDUMP

#include <QGraphicsPixmapItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsPixmapItem ( QGraphicsItem * parent = 0 )
*/
$internalConstructor=|new1|QGraphicsItem *=0

/*
QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = 0 )
*/
$internalConstructor=|new2|const QPixmap &,QGraphicsItem *=0

//[1]QGraphicsPixmapItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPixmapItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPIXMAP(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPixmapItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QPointF offset () const
*/
$method=|QPointF|offset|

/*
QPixmap pixmap () const
*/
$method=|QPixmap|pixmap|

/*
void setOffset ( const QPointF & offset )
*/
$internalMethod=|void|setOffset,setOffset1|const QPointF &

/*
void setOffset ( qreal x, qreal y )
*/
$internalMethod=|void|setOffset,setOffset2|qreal,qreal

//[1]void setOffset ( const QPointF & offset )
//[2]void setOffset ( qreal x, qreal y )

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsPixmapItem_setOffset1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsPixmapItem_setOffset2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPixmap ( const QPixmap & pixmap )
*/
$method=|void|setPixmap|const QPixmap &

/*
void setShapeMode ( ShapeMode mode )
*/
$method=|void|setShapeMode|QGraphicsPixmapItem::ShapeMode

/*
void setTransformationMode ( Qt::TransformationMode mode )
*/
$method=|void|setTransformationMode|Qt::TransformationMode

/*
ShapeMode shapeMode () const
*/
$method=|QGraphicsPixmapItem::ShapeMode|shapeMode|

/*
Qt::TransformationMode transformationMode () const
*/
$method=|Qt::TransformationMode|transformationMode|

/*
virtual QRectF boundingRect () const
*/
$virtualMethod=|QRectF|boundingRect|

/*
virtual bool contains ( const QPointF & point ) const
*/
$virtualMethod=|bool|contains|const QPointF &

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

/*
virtual QPainterPath opaqueArea () const
*/
$virtualMethod=|QPainterPath|opaqueArea|

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

/*
virtual QPainterPath shape () const
*/
$virtualMethod=|QPainterPath|shape|

/*
virtual int type () const
*/
$virtualMethod=|int|type|

#pragma ENDDUMP
