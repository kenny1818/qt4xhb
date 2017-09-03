/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

CLASS QGLPixelBuffer INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bindTexture1
   METHOD bindTexture2
   METHOD bindTexture3
   METHOD bindTexture
   METHOD bindToDynamicTexture
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD drawTexture1
   METHOD drawTexture2
   METHOD drawTexture
   METHOD format
   METHOD generateDynamicTexture
   METHOD isValid
   METHOD makeCurrent
   METHOD releaseFromDynamicTexture
   METHOD size
   METHOD toImage
   METHOD updateDynamicTexture
   METHOD paintEngine
   METHOD hasOpenGLPbuffers
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLPixelBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGLPixelBuffer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLPixelBuffer ( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_NEW1 )
{
  QGLFormat par2 = ISNIL(2)? QGLFormat::defaultFormat() : *(QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLWidget * par3 = ISNIL(3)? 0 : (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLPixelBuffer * o = new QGLPixelBuffer ( *PQSIZE(1), par2, par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGLPixelBuffer ( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_NEW2 )
{
  QGLFormat par3 = ISNIL(3)? QGLFormat::defaultFormat() : *(QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLWidget * par4 = ISNIL(4)? 0 : (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLPixelBuffer * o = new QGLPixelBuffer ( PINT(1), PINT(2), par3, par4 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGLPixelBuffer ( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
//[2]QGLPixelBuffer ( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )

HB_FUNC_STATIC( QGLPIXELBUFFER_NEW )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISQGLFORMAT(2)||ISNIL(2)) && (ISQGLWIDGET(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLPIXELBUFFER_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISQGLFORMAT(3)||ISNIL(3)) && (ISQGLWIDGET(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGLPIXELBUFFER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLPIXELBUFFER_DELETE )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTEXTURE1 )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RGLUINT( obj->bindTexture ( *PQIMAGE(1), OPGLENUM(2,GL_TEXTURE_2D) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTEXTURE2 )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RGLUINT( obj->bindTexture ( *PQPIXMAP(1), OPGLENUM(2,GL_TEXTURE_2D) ) );
  }
}

/*
GLuint bindTexture ( const QString & fileName )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTEXTURE3 )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RGLUINT( obj->bindTexture ( PQSTRING(1) ) );
  }
}

//[1]GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D )
//[2]GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
//[3]GLuint bindTexture ( const QString & fileName )

HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTEXTURE )
{
}

/*
bool bindToDynamicTexture ( GLuint texture_id )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTODYNAMICTEXTURE )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->bindToDynamicTexture ( PGLUINT(1) ) );
  }
}

/*
void deleteTexture ( GLuint texture_id )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_DELETETEXTURE )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->deleteTexture ( PGLUINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool doneCurrent ()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_DONECURRENT )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->doneCurrent () );
  }
}

/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_DRAWTEXTURE1 )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->drawTexture ( *PQRECTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_DRAWTEXTURE2 )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->drawTexture ( *PQPOINTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLPIXELBUFFER_DRAWTEXTURE )
{
}

/*
QGLFormat format () const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_FORMAT )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGLFormat * ptr = new QGLFormat( obj->format () );
    _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );
  }
}

/*
GLuint generateDynamicTexture () const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_GENERATEDYNAMICTEXTURE )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RGLUINT( obj->generateDynamicTexture () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_ISVALID )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
bool makeCurrent ()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_MAKECURRENT )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->makeCurrent () );
  }
}

/*
void releaseFromDynamicTexture ()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_RELEASEFROMDYNAMICTEXTURE )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->releaseFromDynamicTexture ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_SIZE )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QImage toImage () const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_TOIMAGE )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->toImage () );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
void updateDynamicTexture ( GLuint texture_id ) const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_UPDATEDYNAMICTEXTURE )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updateDynamicTexture ( PGLUINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_PAINTENGINE )
{
  QGLPixelBuffer * obj = (QGLPixelBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt4xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}

/*
bool hasOpenGLPbuffers ()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_HASOPENGLPBUFFERS )
{
  RBOOL( QGLPixelBuffer::hasOpenGLPbuffers () );
}

#pragma ENDDUMP
