$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

CLASS QGLFramebufferObject INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD attachment
   METHOD bind
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

$destructor

#pragma BEGINDUMP

#include <QGLFramebufferObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
*/
$constructor=|new1|const QSize &,GLenum=GL_TEXTURE_2D

/*
QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
*/
$constructor=|new2|int,int,GLenum=GL_TEXTURE_2D

/*
QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
*/
$constructor=|new3|const QSize &,const QGLFramebufferObjectFormat &

/*
QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
*/
$constructor=|new4|int,int,const QGLFramebufferObjectFormat &

/*
QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
$constructor=|new5|int,int,QGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA8

/*
QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
$constructor=|new6|const QSize &,QGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA8

//[1]QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
//[2]QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
//[3]QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
//[4]QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
//[5]QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
//[6]QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW )
{
  if( ISBETWEEN(1,2) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGLFramebufferObject_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QGLFramebufferObject_new2();
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(2) )
  {
    QGLFramebufferObject_new3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQGLFRAMEBUFFEROBJECTFORMAT(3) )
  {
    QGLFramebufferObject_new4();
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    QGLFramebufferObject_new5();
  }
  else if( ISBETWEEN(3,4) && ISQSIZE(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QGLFramebufferObject_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Attachment attachment () const
*/
$method=|QGLFramebufferObject::Attachment|attachment|

/*
bool bind ()
*/
$method=|bool|bind|

/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
$internalMethod=|void|drawTexture,drawTexture1|const QRectF &,GLuint,GLenum=GL_TEXTURE_2D

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
$internalMethod=|void|drawTexture,drawTexture2|const QPointF &,GLuint,GLenum=GL_TEXTURE_2D

//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QGLFrameBufferObject_drawTexture1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QGLFrameBufferObject_drawTexture2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFramebufferObjectFormat format () const
*/
$method=|QGLFramebufferObjectFormat|format|

/*
GLuint handle () const
*/
$method=|GLuint|handle|

/*
bool isBound () const
*/
$method=|bool|isBound|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool release ()
*/
$method=|bool|release|

/*
QSize size () const
*/
$method=|QSize|size|

/*
GLuint texture () const
*/
$method=|GLuint|texture|

/*
QImage toImage () const
*/
$method=|QImage|toImage|

/*
virtual QPaintEngine * paintEngine () const
*/
$virtualMethod=|QPaintEngine *|paintEngine|

/*
static void blitFramebuffer ( QGLFramebufferObject * target, const QRect & targetRect, QGLFramebufferObject * source, const QRect & sourceRect, GLbitfield buffers = GL_COLOR_BUFFER_BIT, GLenum filter = GL_NEAREST )
*/
$staticMethod=|void|blitFramebuffer|QGLFramebufferObject *,const QRect &,QGLFramebufferObject *,const QRect &,GLbitfield=GL_COLOR_BUFFER_BIT,GLenum=GL_NEAREST

/*
static bool hasOpenGLFramebufferBlit ()
*/
$staticMethod=|bool|hasOpenGLFramebufferBlit|

/*
static bool hasOpenGLFramebufferObjects ()
*/
$staticMethod=|bool|hasOpenGLFramebufferObjects|

#pragma ENDDUMP
