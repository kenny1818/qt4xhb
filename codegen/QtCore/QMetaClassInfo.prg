$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

CLASS QMetaClassInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD value
   METHOD enclosingMetaObject
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMetaClassInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMetaClassInfo()
*/
HB_FUNC_STATIC( QMETACLASSINFO_NEW )
{
  QMetaClassInfo * o = new QMetaClassInfo ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
const char *name() const
*/
HB_FUNC_STATIC( QMETACLASSINFO_NAME )
{
  QMetaClassInfo * obj = (QMetaClassInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->name ();
    hb_retc( str1 );
  }
}


/*
const char *value() const
*/
HB_FUNC_STATIC( QMETACLASSINFO_VALUE )
{
  QMetaClassInfo * obj = (QMetaClassInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->value ();
    hb_retc( str1 );
  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETACLASSINFO_ENCLOSINGMETAOBJECT )
{
  QMetaClassInfo * obj = (QMetaClassInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject ();
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}

$extraMethods

#pragma ENDDUMP
