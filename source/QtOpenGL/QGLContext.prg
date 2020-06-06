/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QGLFORMAT
REQUEST QPAINTDEVICE
#endif

CLASS QGLContext

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bindTexture
   METHOD create
   METHOD deleteTexture
   METHOD device
   METHOD doneCurrent
   METHOD drawTexture
   METHOD format
   METHOD getProcAddress
   METHOD isSharing
   METHOD isValid
   METHOD makeCurrent
   METHOD overlayTransparentColor
   METHOD requestedFormat
   METHOD reset
   METHOD setFormat
   METHOD swapBuffers
   METHOD areSharing
   METHOD currentContext
   METHOD setTextureCacheLimit
   METHOD textureCacheLimit

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtOpenGL/QGLContext>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLContext ( const QGLFormat & format )
*/
HB_FUNC_STATIC( QGLCONTEXT_NEW )
{
  if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
    QGLContext * obj = new QGLContext( *PQGLFORMAT(1) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLCONTEXT_DELETE )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

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
GLuint bindTexture ( const QImage & image, GLenum target, GLint format, BindOptions options )
*/
void QGLContext_bindTexture1()
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RGLUINT( obj->bindTexture( *PQIMAGE(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) hb_parni(4) ) );
  }
}

/*
GLuint bindTexture ( const QString & fileName )
*/
void QGLContext_bindTexture2()
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RGLUINT( obj->bindTexture( PQSTRING(1) ) );
  }
}

/*
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
void QGLContext_bindTexture3()
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RGLUINT( obj->bindTexture( *PQIMAGE(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
void QGLContext_bindTexture4()
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RGLUINT( obj->bindTexture( *PQPIXMAP(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, BindOptions options )
*/
void QGLContext_bindTexture5()
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RGLUINT( obj->bindTexture( *PQPIXMAP(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) hb_parni(4) ) );
  }
}

/*
[1]GLuint bindTexture ( const QImage & image, GLenum target, GLint format, BindOptions options )
[2]GLuint bindTexture ( const QString & fileName )
[3]GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
[4]GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
[5]GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, BindOptions options )
*/

HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE )
{
  if( ISNUMPAR(4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGLContext_bindTexture1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLContext_bindTexture2();
  }
  else if( ISBETWEEN(1,3) && ISQIMAGE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QGLContext_bindTexture3();
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QGLContext_bindTexture4();
  }
  else if( ISNUMPAR(4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGLContext_bindTexture5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool create ( const QGLContext * shareContext = 0 )
*/
HB_FUNC_STATIC( QGLCONTEXT_CREATE )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQGLCONTEXT(1)||ISNIL(1)) )
    {
#endif
      RBOOL( obj->create( ISNIL(1)? 0 : (QGLContext *) Qt4xHb::itemGetPtr(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void deleteTexture ( GLuint id )
*/
HB_FUNC_STATIC( QGLCONTEXT_DELETETEXTURE )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->deleteTexture( PGLUINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPaintDevice * device () const
*/
HB_FUNC_STATIC( QGLCONTEXT_DEVICE )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPaintDevice * ptr = obj->device();
      Qt4xHb::createReturnClass( ptr, "QPAINTDEVICE", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void doneCurrent ()
*/
HB_FUNC_STATIC( QGLCONTEXT_DONECURRENT )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->doneCurrent();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
void QGLContext_drawTexture1()
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawTexture( *PQRECTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
void QGLContext_drawTexture2()
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawTexture( *PQPOINTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/

HB_FUNC_STATIC( QGLCONTEXT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QGLContext_drawTexture1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QGLContext_drawTexture2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFormat format () const
*/
HB_FUNC_STATIC( QGLCONTEXT_FORMAT )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGLFormat * ptr = new QGLFormat( obj->format() );
      Qt4xHb::createReturnClass( ptr, "QGLFORMAT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void * getProcAddress ( const QString & proc ) const
*/
HB_FUNC_STATIC( QGLCONTEXT_GETPROCADDRESS )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      hb_retptr( (void *) obj->getProcAddress( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isSharing () const
*/
HB_FUNC_STATIC( QGLCONTEXT_ISSHARING )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSharing() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLCONTEXT_ISVALID )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void makeCurrent ()
*/
HB_FUNC_STATIC( QGLCONTEXT_MAKECURRENT )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->makeCurrent();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor overlayTransparentColor () const
*/
HB_FUNC_STATIC( QGLCONTEXT_OVERLAYTRANSPARENTCOLOR )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->overlayTransparentColor() );
      Qt4xHb::createReturnClass( ptr, "QCOLOR", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QGLFormat requestedFormat () const
*/
HB_FUNC_STATIC( QGLCONTEXT_REQUESTEDFORMAT )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGLFormat * ptr = new QGLFormat( obj->requestedFormat() );
      Qt4xHb::createReturnClass( ptr, "QGLFORMAT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void reset ()
*/
HB_FUNC_STATIC( QGLCONTEXT_RESET )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFormat ( const QGLFormat & format )
*/
HB_FUNC_STATIC( QGLCONTEXT_SETFORMAT )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGLFORMAT(1) )
    {
#endif
      obj->setFormat( *PQGLFORMAT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void swapBuffers () const
*/
HB_FUNC_STATIC( QGLCONTEXT_SWAPBUFFERS )
{
  QGLContext * obj = (QGLContext *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->swapBuffers();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static bool areSharing ( const QGLContext * context1, const QGLContext * context2 )
*/
HB_FUNC_STATIC( QGLCONTEXT_ARESHARING )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQGLCONTEXT(1) && ISQGLCONTEXT(2) )
  {
#endif
    RBOOL( QGLContext::areSharing( PQGLCONTEXT(1), PQGLCONTEXT(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static const QGLContext * currentContext ()
*/
HB_FUNC_STATIC( QGLCONTEXT_CURRENTCONTEXT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    const QGLContext * ptr = QGLContext::currentContext();
    Qt4xHb::createReturnClass( ptr, "QGLCONTEXT", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void setTextureCacheLimit ( int size )
*/
HB_FUNC_STATIC( QGLCONTEXT_SETTEXTURECACHELIMIT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
    QGLContext::setTextureCacheLimit( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static int textureCacheLimit()
*/
HB_FUNC_STATIC( QGLCONTEXT_TEXTURECACHELIMIT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QGLContext::textureCacheLimit() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QGLCONTEXT_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGLCONTEXT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QGLCONTEXT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QGLCONTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLCONTEXT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
