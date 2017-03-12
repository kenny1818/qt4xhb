/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QRECT
#endif

CLASS QVideoSurfaceFormat

   DATA pointer
   DATA class_id INIT Class_Id_QVideoSurfaceFormat
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD frameHeight
   METHOD frameRate
   METHOD frameSize
   METHOD frameWidth
   METHOD handleType
   METHOD isValid
   METHOD pixelAspectRatio
   METHOD pixelFormat
   METHOD property
   METHOD propertyNames
   METHOD scanLineDirection
   METHOD setFrameRate
   METHOD setFrameSize1
   METHOD setFrameSize2
   METHOD setFrameSize
   METHOD setPixelAspectRatio1
   METHOD setPixelAspectRatio2
   METHOD setPixelAspectRatio
   METHOD setProperty
   METHOD setScanLineDirection
   METHOD setViewport
   METHOD setYCbCrColorSpace
   METHOD sizeHint
   METHOD viewport
   METHOD yCbCrColorSpace
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoSurfaceFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QVideoSurfaceFormat>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QVideoSurfaceFormat ()
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW1 )
{
  QVideoSurfaceFormat * o = NULL;
  o = new QVideoSurfaceFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVideoSurfaceFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW2 )
{
  QVideoSurfaceFormat * o = NULL;
  QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVideoSurfaceFormat ( *par1,  (QVideoFrame::PixelFormat) hb_parni(2), ISNIL(3)? QAbstractVideoBuffer::NoHandle : (QAbstractVideoBuffer::HandleType) hb_parni(3) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVideoSurfaceFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW3 )
{
  QVideoSurfaceFormat * o = NULL;
  QVideoSurfaceFormat * par1 = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVideoSurfaceFormat ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVideoSurfaceFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QVideoSurfaceFormat ()
//[2]QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
//[3]QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQSIZE(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_DELETE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int frameHeight () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_FRAMEHEIGHT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->frameHeight (  ) );
  }
}


/*
qreal frameRate () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_FRAMERATE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->frameRate (  );
    hb_retnd( r );
  }
}


/*
QSize frameSize () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_FRAMESIZE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->frameSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int frameWidth () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_FRAMEWIDTH )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->frameWidth (  ) );
  }
}


/*
QAbstractVideoBuffer::HandleType handleType () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_HANDLETYPE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->handleType (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_ISVALID )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QSize pixelAspectRatio () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_PIXELASPECTRATIO )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->pixelAspectRatio (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QVideoFrame::PixelFormat pixelFormat () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_PIXELFORMAT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->pixelFormat (  ) );
  }
}


/*
QVariant property ( const char * name ) const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_PROPERTY )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->property (  (const char *) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QList<QByteArray> propertyNames () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_PROPERTYNAMES )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->propertyNames (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
Direction scanLineDirection () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SCANLINEDIRECTION )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->scanLineDirection (  ) );
  }
}


/*
void setFrameRate ( qreal rate )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMERATE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setFrameRate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrameSize ( const QSize & size )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE1 )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFrameSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrameSize ( int width, int height )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE2 )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFrameSize ( hb_parni(1), hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFrameSize ( const QSize & size )
//[2]void setFrameSize ( int width, int height )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_SETFRAMESIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_SETFRAMESIZE2 );
  }
}

/*
void setPixelAspectRatio ( const QSize & ratio )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO1 )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPixelAspectRatio ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixelAspectRatio ( int horizontal, int vertical )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO2 )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPixelAspectRatio ( hb_parni(1), hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setPixelAspectRatio ( const QSize & ratio )
//[2]void setPixelAspectRatio ( int horizontal, int vertical )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO2 );
  }
}

/*
void setProperty ( const char * name, const QVariant & value )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPROPERTY )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setProperty (  (const char *) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScanLineDirection ( Direction direction )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETSCANLINEDIRECTION )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScanLineDirection (  (QVideoSurfaceFormat::Direction) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewport ( const QRect & viewport )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETVIEWPORT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setViewport ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setYCbCrColorSpace ( YCbCrColorSpace space )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETYCBCRCOLORSPACE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setYCbCrColorSpace (  (QVideoSurfaceFormat::YCbCrColorSpace) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SIZEHINT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRect viewport () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_VIEWPORT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->viewport (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
YCbCrColorSpace yCbCrColorSpace () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_YCBCRCOLORSPACE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->yCbCrColorSpace (  ) );
  }
}


HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEWFROM )
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

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETSELFDESTRUCTION )
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
