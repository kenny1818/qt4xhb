/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QImageIOHandler

   DATA pointer
   DATA class_id INIT Class_Id_QImageIOHandler
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD canRead
   METHOD currentImageNumber
   METHOD currentImageRect
   METHOD device
   METHOD format
   METHOD imageCount
   METHOD jumpToImage
   METHOD jumpToNextImage
   METHOD loopCount
   METHOD nextImageDelay
   METHOD option
   METHOD read
   METHOD setDevice
   METHOD setFormat
   METHOD setOption
   METHOD supportsOption
   METHOD write
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QImageIOHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QImageIOHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QRect>
#include <QVariant>


HB_FUNC_STATIC( QIMAGEIOHANDLER_DELETE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool canRead () const = 0
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_CANREAD )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canRead (  ) );
  }
}


/*
virtual int currentImageNumber () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_CURRENTIMAGENUMBER )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->currentImageNumber (  ) );
  }
}


/*
virtual QRect currentImageRect () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_CURRENTIMAGERECT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->currentImageRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_DEVICE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
QByteArray format () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_FORMAT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
virtual int imageCount () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_IMAGECOUNT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->imageCount (  ) );
  }
}


/*
virtual bool jumpToImage ( int imageNumber )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_JUMPTOIMAGE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->jumpToImage ( par1 ) );
  }
}


/*
virtual bool jumpToNextImage ()
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_JUMPTONEXTIMAGE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->jumpToNextImage (  ) );
  }
}


/*
virtual int loopCount () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_LOOPCOUNT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->loopCount (  ) );
  }
}


/*
virtual int nextImageDelay () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_NEXTIMAGEDELAY )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->nextImageDelay (  ) );
  }
}


/*
virtual QVariant option ( ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_OPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->option (  (QImageIOHandler::ImageOption) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool read ( QImage * image ) = 0
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_READ )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->read ( par1 ) );
  }
}


/*
void setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SETDEVICE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SETFORMAT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
virtual void setOption ( ImageOption option, const QVariant & value )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SETOPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setOption (  (QImageIOHandler::ImageOption) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool supportsOption ( ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SUPPORTSOPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->supportsOption (  (QImageIOHandler::ImageOption) par1 ) );
  }
}


/*
virtual bool write ( const QImage & image )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_WRITE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->write ( *par1 ) );
  }
}


HB_FUNC_STATIC( QIMAGEIOHANDLER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QIMAGEIOHANDLER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QIMAGEIOHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEIOHANDLER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QIMAGEIOHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEIOHANDLER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QIMAGEIOHANDLER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
