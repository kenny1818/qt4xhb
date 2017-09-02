/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

CLASS QGLFramebufferObject INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD attachment
   METHOD bind
   METHOD drawTexture1
   METHOD drawTexture2
   METHOD drawTexture
   METHOD format
   METHOD handle
   METHOD isBound
   METHOD isValid
   METHOD release
   METHOD size
   METHOD texture
   METHOD toImage
   METHOD paintEngine
   METHOD blitFramebuffer
   METHOD hasOpenGLFramebufferBlit
   METHOD hasOpenGLFramebufferObjects
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLFramebufferObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGLFramebufferObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW1 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( *PQSIZE(1), OPGLENUM(2,GL_TEXTURE_2D) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW2 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( PINT(1), PINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW3 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( *PQSIZE(1), *PQGLFRAMEBUFFEROBJECTFORMAT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW4 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( PINT(1), PINT(2), *PQGLFRAMEBUFFEROBJECTFORMAT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW5 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( PINT(1), PINT(2), (QGLFramebufferObject::Attachment) hb_parni(3), OPGLENUM(4,GL_TEXTURE_2D), OPGLENUM(5,GL_RGBA8) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW6 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( *PQSIZE(1), (QGLFramebufferObject::Attachment) hb_parni(2), OPGLENUM(3,GL_TEXTURE_2D), OPGLENUM(4,GL_RGBA8) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
//[2]QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
//[3]QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
//[4]QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
//[5]QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
//[6]QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW )
{
}

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DELETE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Attachment attachment () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ATTACHMENT )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->attachment () );
  }
}


/*
bool bind ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_BIND )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->bind () );
  }
}


/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE1 )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->drawTexture ( *PQRECTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE2 )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->drawTexture ( *PQPOINTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE2 );
  }
}

/*
QGLFramebufferObjectFormat format () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_FORMAT )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGLFramebufferObjectFormat * ptr = new QGLFramebufferObjectFormat( obj->format () );
    _qt4xhb_createReturnClass ( ptr, "QGLFRAMEBUFFEROBJECTFORMAT" );
  }
}


/*
GLuint handle () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HANDLE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RGLUINT( obj->handle () );
  }
}


/*
bool isBound () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ISBOUND )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isBound () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ISVALID )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
bool release ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_RELEASE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->release () );
  }
}


/*
QSize size () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_SIZE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
GLuint texture () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_TEXTURE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RGLUINT( obj->texture () );
  }
}


/*
QImage toImage () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_TOIMAGE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->toImage () );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
virtual QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_PAINTENGINE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt4xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}



/*
void blitFramebuffer ( QGLFramebufferObject * target, const QRect & targetRect, QGLFramebufferObject * source, const QRect & sourceRect, GLbitfield buffers = GL_COLOR_BUFFER_BIT, GLenum filter = GL_NEAREST )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER )
{
  QGLFramebufferObject::blitFramebuffer ( PQGLFRAMEBUFFEROBJECT(1), *PQRECT(2), PQGLFRAMEBUFFEROBJECT(3), *PQRECT(4), OPGLBITFIELD(5,GL_COLOR_BUFFER_BIT), OPGLENUM(6,GL_NEAREST) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasOpenGLFramebufferBlit ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFERBLIT )
{
  RBOOL( QGLFramebufferObject::hasOpenGLFramebufferBlit () );
}


/*
bool hasOpenGLFramebufferObjects ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFEROBJECTS )
{
  RBOOL( QGLFramebufferObject::hasOpenGLFramebufferObjects () );
}




#pragma ENDDUMP
