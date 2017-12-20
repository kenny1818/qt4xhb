$header

#include "hbclass.ch"

CLASS QEvent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accept
   METHOD ignore
   METHOD isAccepted
   METHOD setAccepted
   METHOD spontaneous
   METHOD type
   METHOD registerEventType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QEvent ( Type type )
$constructor=|new|QEvent::Type

$deleteMethod

$prototype=void accept ()
$method=|void|accept|

$prototype=void ignore ()
$method=|void|ignore|

$prototype=bool isAccepted () const
$method=|bool|isAccepted|

$prototype=void setAccepted ( bool accepted )
$method=|void|setAccepted|bool

$prototype=bool spontaneous () const
$method=|bool|spontaneous|

$prototype=Type type () const
$method=|QEvent::Type|type|

$prototype=static int registerEventType ( int hint = -1 )
$staticMethod=|int|registerEventType|int=-1

$extraMethods

#pragma ENDDUMP
