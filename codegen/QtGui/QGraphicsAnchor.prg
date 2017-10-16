$header

#include "hbclass.ch"

CLASS QGraphicsAnchor INHERIT QObject

   METHOD delete
   METHOD setSizePolicy
   METHOD setSpacing
   METHOD sizePolicy
   METHOD spacing
   METHOD unsetSpacing

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsAnchor>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
void setSizePolicy ( QSizePolicy::Policy policy )
*/
$method=|void|setSizePolicy|QSizePolicy::Policy

/*
void setSpacing ( qreal spacing )
*/
$method=|void|setSpacing|qreal

/*
QSizePolicy::Policy sizePolicy () const
*/
$method=|QSizePolicy::Policy|sizePolicy|

/*
qreal spacing () const
*/
$method=|qreal|spacing|

/*
void unsetSpacing ()
*/
$method=|void|unsetSpacing|

#pragma ENDDUMP
