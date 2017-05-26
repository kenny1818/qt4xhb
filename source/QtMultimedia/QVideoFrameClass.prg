/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QVideoFrame

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD bits1
   METHOD bits2
   METHOD bits
   METHOD bytesPerLine
   METHOD endTime
   METHOD fieldType
   METHOD handle
   METHOD handleType
   METHOD height
   METHOD isMapped
   METHOD isReadable
   METHOD isValid
   METHOD isWritable
   METHOD map
   METHOD mapMode
   METHOD mappedBytes
   METHOD pixelFormat
   METHOD setEndTime
   METHOD setFieldType
   METHOD setStartTime
   METHOD size
   METHOD startTime
   METHOD unmap
   METHOD width
   METHOD imageFormatFromPixelFormat
   METHOD pixelFormatFromImageFormat
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QVideoFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QVideoFrame ()
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW1 )
{
  QVideoFrame * o = NULL;
  o = new QVideoFrame ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW2 )
{
  QVideoFrame * o = NULL;
  QAbstractVideoBuffer * par1 = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVideoFrame ( par1, *par2,  (QVideoFrame::PixelFormat) hb_parni(3) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW3 )
{
  QVideoFrame * o = NULL;
  QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVideoFrame ( PINT(1), *par2, PINT(3),  (QVideoFrame::PixelFormat) hb_parni(4) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QVideoFrame ( const QImage & image )
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW4 )
{
  QVideoFrame * o = NULL;
  QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVideoFrame ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QVideoFrame ( const QVideoFrame & other )
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW5 )
{
  QVideoFrame * o = NULL;
  QVideoFrame * par1 = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVideoFrame ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QVideoFrame ()
//[2]QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
//[3]QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
//[4]QVideoFrame ( const QImage & image )
//[5]QVideoFrame ( const QVideoFrame & other )

HB_FUNC_STATIC( QVIDEOFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW1 );
  }
  else if( ISNUMPAR(3) && ISQABSTRACTVIDEOBUFFER(1) && ISQSIZE(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQSIZE(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVIDEOFRAME_DELETE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
uchar * bits ()
*/
HB_FUNC_STATIC( QVIDEOFRAME_BITS1 )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uchar * ptr = obj->bits ();
    _qt4xhb_createReturnClass ( ptr, "UCHAR" );
  }
}


/*
const uchar * bits () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_BITS2 )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const uchar * ptr = obj->bits ();
    _qt4xhb_createReturnClass ( ptr, "UCHAR" );
  }
}


//[1]uchar * bits ()
//[2]const uchar * bits () const

HB_FUNC_STATIC( QVIDEOFRAME_BITS )
{
  HB_FUNC_EXEC( QVIDEOFRAME_BITS1 );
}

/*
int bytesPerLine () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_BYTESPERLINE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->bytesPerLine () );
  }
}


/*
qint64 endTime () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ENDTIME )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->endTime ();
    hb_retni( i );
  }
}


/*
FieldType fieldType () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_FIELDTYPE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fieldType () );
  }
}


/*
QVariant handle () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HANDLE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->handle () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QAbstractVideoBuffer::HandleType handleType () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HANDLETYPE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->handleType () );
  }
}


/*
int height () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HEIGHT )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->height () );
  }
}


/*
bool isMapped () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISMAPPED )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isMapped () );
  }
}


/*
bool isReadable () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISREADABLE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isReadable () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISVALID )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}


/*
bool isWritable () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISWRITABLE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isWritable () );
  }
}


/*
bool map ( QAbstractVideoBuffer::MapMode mode )
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAP )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->map (  (QAbstractVideoBuffer::MapMode) hb_parni(1) ) );
  }
}


/*
QAbstractVideoBuffer::MapMode mapMode () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAPMODE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->mapMode () );
  }
}


/*
int mappedBytes () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAPPEDBYTES )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->mappedBytes () );
  }
}


/*
PixelFormat pixelFormat () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_PIXELFORMAT )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->pixelFormat () );
  }
}


/*
void setEndTime ( qint64 time )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETENDTIME )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setEndTime ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFieldType ( FieldType field )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETFIELDTYPE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFieldType (  (QVideoFrame::FieldType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStartTime ( qint64 time )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETSTARTTIME )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setStartTime ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize size () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_SIZE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
qint64 startTime () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_STARTTIME )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->startTime ();
    hb_retni( i );
  }
}


/*
void unmap ()
*/
HB_FUNC_STATIC( QVIDEOFRAME_UNMAP )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unmap ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int width () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_WIDTH )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->width () );
  }
}



/*
QImage::Format imageFormatFromPixelFormat ( PixelFormat format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_IMAGEFORMATFROMPIXELFORMAT )
{
  hb_retni( (int) QVideoFrame::imageFormatFromPixelFormat (  (QVideoFrame::PixelFormat) hb_parni(1) ) );
}


/*
PixelFormat pixelFormatFromImageFormat ( QImage::Format format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_PIXELFORMATFROMIMAGEFORMAT )
{
  hb_retni( (int) QVideoFrame::pixelFormatFromImageFormat (  (QImage::Format) hb_parni(1) ) );
}


HB_FUNC_STATIC( QVIDEOFRAME_NEWFROM )
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

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVIDEOFRAME_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVIDEOFRAME_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOFRAME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVIDEOFRAME_SETSELFDESTRUCTION )
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
