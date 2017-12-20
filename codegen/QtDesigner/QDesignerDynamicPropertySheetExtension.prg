$header

#include "hbclass.ch"

CLASS QDesignerDynamicPropertySheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addDynamicProperty
   METHOD canAddDynamicProperty
   METHOD dynamicPropertiesAllowed
   METHOD isDynamicProperty
   METHOD removeDynamicProperty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerDynamicPropertySheetExtension>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

prototype=virtual int addDynamicProperty ( const QString & propertyName, const QVariant & value ) = 0
$virtualMethod=|int|addDynamicProperty|const QString &,const QVariant &

prototype=virtual bool canAddDynamicProperty ( const QString & propertyName ) const = 0
$virtualMethod=|bool|canAddDynamicProperty|const QString &

prototype=virtual bool dynamicPropertiesAllowed () const = 0
$virtualMethod=|bool|dynamicPropertiesAllowed|

prototype=virtual bool isDynamicProperty ( int index ) const = 0
$virtualMethod=|bool|isDynamicProperty|int

prototype=virtual bool removeDynamicProperty ( int index ) = 0
$virtualMethod=|bool|removeDynamicProperty|int

$extraMethods

#pragma ENDDUMP
