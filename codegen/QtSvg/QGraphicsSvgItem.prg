$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QSVGRENDERER
REQUEST QRECTF
#endif

CLASS QGraphicsSvgItem INHERIT QGraphicsObject

   METHOD new
   METHOD elementId
   METHOD maximumCacheSize
   METHOD renderer
   METHOD setElementId
   METHOD setMaximumCacheSize
   METHOD setSharedRenderer
   METHOD boundingRect
   METHOD paint
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsSvgItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSvgRenderer>

/*
QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
*/
$internalConstructor=|new1|QGraphicsItem *=0

/*
QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )
*/
$internalConstructor=|new2|const QString &,QGraphicsItem *=0

//[1]QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsSvgItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsSvgItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString elementId () const
*/
$method=|QString|elementId|

/*
QSize maximumCacheSize () const
*/
$method=|QSize|maximumCacheSize|

/*
QSvgRenderer * renderer () const
*/
$method=|QSvgRenderer *|renderer|

/*
void setElementId ( const QString & id )
*/
$method=|void|setElementId|const QString &

/*
void setMaximumCacheSize ( const QSize & size )
*/
$method=|void|setMaximumCacheSize|const QSize &

/*
void setSharedRenderer ( QSvgRenderer * renderer )
*/
$method=|void|setSharedRenderer|QSvgRenderer *

/*
virtual QRectF boundingRect () const
*/
$virtualMethod=|QRectF|boundingRect|

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
virtual int type () const
*/
$virtualMethod=|int|type|

#pragma ENDDUMP
