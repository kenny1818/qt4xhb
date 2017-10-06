$header

#include "hbclass.ch"

CLASS QGLFramebufferObjectFormat INHERIT QWidget

   METHOD new1
   METHOD new2
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

$destructor

#pragma BEGINDUMP

#include <QGLFramebufferObjectFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFramebufferObjectFormat ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW1 )
{
  QGLFramebufferObjectFormat * o = new QGLFramebufferObjectFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW2 )
{
  QGLFramebufferObjectFormat * o = new QGLFramebufferObjectFormat ( *PQGLFRAMEBUFFEROBJECTFORMAT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLFramebufferObjectFormat ()
//[2]QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECTFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(1) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECTFORMAT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QGLFramebufferObject::Attachment attachment () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_ATTACHMENT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->attachment () );
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
    RGLENUM( obj->internalTextureFormat () );
  }
}

/*
int samples () const
*/
$method=|int|samples|

/*
void setAttachment ( QGLFramebufferObject::Attachment attachment )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SETATTACHMENT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAttachment ( (QGLFramebufferObject::Attachment) par1 );
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
    obj->setInternalTextureFormat ( PGLENUM(1) );
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
    obj->setSamples ( PINT(1) );
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
    obj->setTextureTarget ( PGLENUM(1) );
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
    RGLENUM( obj->textureTarget () );
  }
}





#pragma ENDDUMP
