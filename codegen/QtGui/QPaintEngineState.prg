$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPOINTF
REQUEST QPAINTERPATH
REQUEST QREGION
REQUEST QFONT
REQUEST QPAINTER
REQUEST QPEN
REQUEST QTRANSFORM
#endif

CLASS QPaintEngineState

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD backgroundBrush
   METHOD backgroundMode
   METHOD brush
   METHOD brushNeedsResolving
   METHOD brushOrigin
   METHOD clipOperation
   METHOD clipPath
   METHOD clipRegion
   METHOD compositionMode
   METHOD font
   METHOD isClipEnabled
   METHOD opacity
   METHOD painter
   METHOD pen
   METHOD penNeedsResolving
   METHOD renderHints
   METHOD state
   METHOD transform

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPaintEngineState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=QBrush backgroundBrush () const
$method=|QBrush|backgroundBrush|

$prototype=Qt::BGMode backgroundMode () const
$method=|Qt::BGMode|backgroundMode|

$prototype=QBrush brush () const
$method=|QBrush|brush|

$prototype=bool brushNeedsResolving () const
$method=|bool|brushNeedsResolving|

$prototype=QPointF brushOrigin () const
$method=|QPointF|brushOrigin|

$prototype=Qt::ClipOperation clipOperation () const
$method=|Qt::ClipOperation|clipOperation|

$prototype=QPainterPath clipPath () const
$method=|QPainterPath|clipPath|

$prototype=QRegion clipRegion () const
$method=|QRegion|clipRegion|

$prototype=QPainter::CompositionMode compositionMode () const
$method=|QPainter::CompositionMode|compositionMode|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=bool isClipEnabled () const
$method=|bool|isClipEnabled|

$prototype=qreal opacity () const
$method=|qreal|opacity|

$prototype=QPainter * painter () const
$method=|QPainter *|painter|

$prototype=QPen pen () const
$method=|QPen|pen|

$prototype=bool penNeedsResolving () const
$method=|bool|penNeedsResolving|

$prototype=QPainter::RenderHints renderHints () const
$method=|QPainter::RenderHints|renderHints|

$prototype=QPaintEngine::DirtyFlags state () const
$method=|QPaintEngine::DirtyFlags|state|

$prototype=QTransform transform () const
$method=|QTransform|transform|

$extraMethods

#pragma ENDDUMP
