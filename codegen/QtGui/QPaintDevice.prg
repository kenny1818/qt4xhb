$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAINTENGINE
#endif

CLASS QPaintDevice

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD colorCount
   METHOD depth
   METHOD height
   METHOD heightMM
   METHOD logicalDpiX
   METHOD logicalDpiY
   METHOD numColors
   METHOD paintEngine
   METHOD paintingActive
   METHOD physicalDpiX
   METHOD physicalDpiY
   METHOD width
   METHOD widthMM

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPaintDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPaintDevice>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QPAINTDEVICE_DELETE )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int colorCount () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_COLORCOUNT )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->colorCount () );
  }
}

/*
int depth () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_DEPTH )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->depth () );
  }
}

/*
int height () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_HEIGHT )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->height () );
  }
}

/*
int heightMM () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_HEIGHTMM )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->heightMM () );
  }
}

/*
int logicalDpiX () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_LOGICALDPIX )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->logicalDpiX () );
  }
}

/*
int logicalDpiY () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_LOGICALDPIY )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->logicalDpiY () );
  }
}

/*
int numColors () const (deprecated)
*/
HB_FUNC_STATIC( QPAINTDEVICE_NUMCOLORS )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->numColors () );
  }
}

/*
virtual QPaintEngine * paintEngine () const = 0
*/
HB_FUNC_STATIC( QPAINTDEVICE_PAINTENGINE )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt4xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}

/*
bool paintingActive () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_PAINTINGACTIVE )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->paintingActive () );
  }
}

/*
int physicalDpiX () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_PHYSICALDPIX )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->physicalDpiX () );
  }
}

/*
int physicalDpiY () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_PHYSICALDPIY )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->physicalDpiY () );
  }
}

/*
int width () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_WIDTH )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->width () );
  }
}

/*
int widthMM () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_WIDTHMM )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->widthMM () );
  }
}

$extraMethods

#pragma ENDDUMP
