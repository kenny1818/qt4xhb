$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAINTERPATH
REQUEST QRECTF
#endif

CLASS QGraphicsPathItem INHERIT QAbstractGraphicsShapeItem

   METHOD new
   METHOD delete
   METHOD path
   METHOD setPath
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

#include <QGraphicsPathItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QGraphicsPathItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )
$internalConstructor=|new1|const QPainterPath &,QGraphicsItem *=0

//[1]QGraphicsPathItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPATHITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPathItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPAINTERPATH(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPathItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QPainterPath path () const
$method=|QPainterPath|path|

$prototype=void setPath ( const QPainterPath & path )
$method=|void|setPath|const QPainterPath &

$prototype=virtual QRectF boundingRect () const
$virtualMethod=|QRectF|boundingRect|

$prototype=virtual bool contains ( const QPointF & point ) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototype=virtual QPainterPath opaqueArea () const
$virtualMethod=|QPainterPath|opaqueArea|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototype=virtual QPainterPath shape () const
$virtualMethod=|QPainterPath|shape|

$prototype=virtual int type () const
$virtualMethod=|int|type|

#pragma ENDDUMP
