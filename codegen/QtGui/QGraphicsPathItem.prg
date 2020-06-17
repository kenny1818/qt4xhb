%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractGraphicsShapeItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsPathItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QPainterPath &,QGraphicsItem *=0

/*
[1]QGraphicsPathItem ( QGraphicsItem * parent = 0 )
[2]QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=QPainterPath path() const

$prototype=void setPath ( const QPainterPath & path )
$method=|void|setPath|const QPainterPath &

$prototypeV2=virtual QRectF boundingRect() const

$prototype=virtual bool contains ( const QPointF & point ) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

#pragma ENDDUMP
