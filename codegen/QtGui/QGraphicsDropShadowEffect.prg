$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QPOINTF
REQUEST QRECTF
#endif

CLASS QGraphicsDropShadowEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD blurRadius
   METHOD color
   METHOD offset
   METHOD xOffset
   METHOD yOffset
   METHOD boundingRectFor
   METHOD setBlurRadius
   METHOD setColor
   METHOD setOffset
   METHOD setXOffset
   METHOD setYOffset

   METHOD onBlurRadiusChanged
   METHOD onColorChanged
   METHOD onOffsetChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsDropShadowEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QGraphicsDropShadowEffect ( QObject * parent = 0 )
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_NEW )
{
  QGraphicsDropShadowEffect * o = new QGraphicsDropShadowEffect ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=qreal blurRadius () const
$method=|qreal|blurRadius|

$prototype=QColor color () const
$method=|QColor|color|

$prototype=QPointF offset () const
$method=|QPointF|offset|

$prototype=qreal xOffset () const
$method=|qreal|xOffset|

$prototype=qreal yOffset () const
$method=|qreal|yOffset|

$prototype=virtual QRectF boundingRectFor ( const QRectF & rect ) const
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

$prototype=void setBlurRadius ( qreal blurRadius )
$method=|void|setBlurRadius|qreal

$prototype=void setColor ( const QColor & color )
$method=|void|setColor|const QColor &

$prototype=void setOffset ( const QPointF & ofs )
$internalMethod=|void|setOffset,setOffset1|const QPointF &

$prototype=void setOffset ( qreal dx, qreal dy )
$internalMethod=|void|setOffset,setOffset2|qreal,qreal

$prototype=void setOffset ( qreal d )
$internalMethod=|void|setOffset,setOffset3|qreal

//[1]void setOffset ( const QPointF & ofs )
//[2]void setOffset ( qreal dx, qreal dy )
//[3]void setOffset ( qreal d )

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsDropShadowEffect_setOffset1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsDropShadowEffect_setOffset2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsDropShadowEffect_setOffset3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setXOffset ( qreal dx )
$method=|void|setXOffset|qreal

$prototype=void setYOffset ( qreal dy )
$method=|void|setYOffset|qreal

#pragma ENDDUMP
