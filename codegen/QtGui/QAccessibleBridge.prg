$header

#include "hbclass.ch"

CLASS QAccessibleBridge

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD notifyAccessibilityUpdate
   METHOD setRootObject

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessibleBridge>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual void notifyAccessibilityUpdate ( int reason, QAccessibleInterface * interface, int child ) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEBRIDGE_NOTIFYACCESSIBILITYUPDATE )
{
  QAccessibleBridge * obj = (QAccessibleBridge *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAccessibleInterface * par2 = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->notifyAccessibilityUpdate ( PINT(1), par2, PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setRootObject ( QAccessibleInterface * object ) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEBRIDGE_SETROOTOBJECT )
{
  QAccessibleBridge * obj = (QAccessibleBridge *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAccessibleInterface * par1 = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRootObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
