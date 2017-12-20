$header

#include "hbclass.ch"

CLASS QDeclarativeParserStatus

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD classBegin
   METHOD componentComplete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeParserStatus>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

prototype=virtual void classBegin () = 0
$virtualMethod=|void|classBegin|

prototype=virtual void componentComplete () = 0
$virtualMethod=|void|componentComplete|

$extraMethods

#pragma ENDDUMP
