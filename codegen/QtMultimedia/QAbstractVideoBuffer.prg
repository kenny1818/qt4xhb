$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST UCHAR
#endif

CLASS QAbstractVideoBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD handle
   METHOD handleType
   METHOD map
   METHOD mapMode
   METHOD unmap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractVideoBuffer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

$deleteMethod

/*
virtual QVariant handle () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOBUFFER_HANDLE )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->handle () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
HandleType handleType () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOBUFFER_HANDLETYPE )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->handleType () );
  }
}


/*
virtual uchar * map ( MapMode mode, int * numBytes, int * bytesPerLine ) = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOBUFFER_MAP )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2;
    int par3;
    uchar * ptr = obj->map ( (QAbstractVideoBuffer::MapMode) hb_parni(1), &par2, &par3 );
    _qt4xhb_createReturnClass ( ptr, "UCHAR" );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
}


/*
virtual MapMode mapMode () const = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOBUFFER_MAPMODE )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->mapMode () );
  }
}


/*
virtual void unmap () = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOBUFFER_UNMAP )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unmap ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
