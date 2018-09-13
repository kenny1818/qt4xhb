/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QGLFramebufferObjectFormat INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD attachment
   METHOD internalTextureFormat
   METHOD samples
   METHOD setAttachment
   METHOD setInternalTextureFormat
   METHOD setSamples
   METHOD setTextureTarget
   METHOD textureTarget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLFramebufferObjectFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGLFramebufferObjectFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFramebufferObjectFormat ()
*/
void QGLFramebufferObjectFormat_new1 ()
{
  QGLFramebufferObjectFormat * o = new QGLFramebufferObjectFormat ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )
*/
void QGLFramebufferObjectFormat_new2 ()
{
  QGLFramebufferObjectFormat * o = new QGLFramebufferObjectFormat ( *PQGLFRAMEBUFFEROBJECTFORMAT(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QGLFramebufferObjectFormat ()
//[2]QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFramebufferObjectFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(1) )
  {
    QGLFramebufferObjectFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_DELETE )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QGLFramebufferObject::Attachment attachment () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_ATTACHMENT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->attachment () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
GLenum internalTextureFormat () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_INTERNALTEXTUREFORMAT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RGLENUM( obj->internalTextureFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int samples () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SAMPLES )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->samples () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAttachment ( QGLFramebufferObject::Attachment attachment )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SETATTACHMENT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAttachment ( (QGLFramebufferObject::Attachment) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInternalTextureFormat ( GLenum internalTextureFormat )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SETINTERNALTEXTUREFORMAT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setInternalTextureFormat ( PGLENUM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSamples ( int samples )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SETSAMPLES )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSamples ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextureTarget ( GLenum target )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SETTEXTURETARGET )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTextureTarget ( PGLENUM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
GLenum textureTarget () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_TEXTURETARGET )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RGLENUM( obj->textureTarget () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
