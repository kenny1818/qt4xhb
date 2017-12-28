$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneWheelEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD buttons
   METHOD delta
   METHOD modifiers
   METHOD orientation
   METHOD pos
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsSceneWheelEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=Qt::MouseButtons buttons () const
$method=|Qt::MouseButtons|buttons|

$prototype=int delta () const
$method=|int|delta|

$prototype=Qt::KeyboardModifiers modifiers () const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=QPointF pos () const
$method=|QPointF|pos|

$prototype=QPointF scenePos () const
$method=|QPointF|scenePos|

$prototype=QPoint screenPos () const
$method=|QPoint|screenPos|

#pragma ENDDUMP
