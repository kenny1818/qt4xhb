$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QMoveEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD oldPos
   METHOD pos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMoveEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QMoveEvent ( const QPoint & pos, const QPoint & oldPos )
$constructor=|new|const QPoint &,const QPoint &

$deleteMethod

$prototype=const QPoint & oldPos () const
$method=|const QPoint &|oldPos|

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

#pragma ENDDUMP
