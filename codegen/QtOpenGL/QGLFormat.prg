$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLFORMAT
#endif

CLASS QGLFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD accum
   METHOD accumBufferSize
   METHOD alpha
   METHOD alphaBufferSize
   METHOD blueBufferSize
   METHOD depth
   METHOD depthBufferSize
   METHOD directRendering
   METHOD doubleBuffer
   METHOD greenBufferSize
   METHOD hasOverlay
   METHOD majorVersion
   METHOD minorVersion
   METHOD plane
   METHOD profile
   METHOD redBufferSize
   METHOD rgba
   METHOD sampleBuffers
   METHOD samples
   METHOD setAccum
   METHOD setAccumBufferSize
   METHOD setAlpha
   METHOD setAlphaBufferSize
   METHOD setBlueBufferSize
   METHOD setDepth
   METHOD setDepthBufferSize
   METHOD setDirectRendering
   METHOD setDoubleBuffer
   METHOD setGreenBufferSize
   METHOD setOption
   METHOD setOverlay
   METHOD setPlane
   METHOD setProfile
   METHOD setRedBufferSize
   METHOD setRgba
   METHOD setSampleBuffers
   METHOD setSamples
   METHOD setStencil
   METHOD setStencilBufferSize
   METHOD setStereo
   METHOD setSwapInterval
   METHOD setVersion
   METHOD stencil
   METHOD stencilBufferSize
   METHOD stereo
   METHOD swapInterval
   METHOD testOption
   METHOD defaultFormat
   METHOD defaultOverlayFormat
   METHOD hasOpenGL
   METHOD hasOpenGLOverlays
   METHOD openGLVersionFlags
   METHOD setDefaultFormat
   METHOD setDefaultOverlayFormat

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGLFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_NEW1 )
{
  QGLFormat * o = new QGLFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFormat ( QGL::FormatOptions options, int plane = 0 )
*/
HB_FUNC_STATIC( QGLFORMAT_NEW2 )
{
  int par1 = hb_parni(1);
  QGLFormat * o = new QGLFormat ( (QGL::FormatOptions) par1, OPINT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFormat ( const QGLFormat & other )
*/
HB_FUNC_STATIC( QGLFORMAT_NEW3 )
{
  QGLFormat * o = new QGLFormat ( *PQGLFORMAT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLFormat ()
//[2]QGLFormat ( QGL::FormatOptions options, int plane = 0 )
//[3]QGLFormat ( const QGLFormat & other )

HB_FUNC_STATIC( QGLFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool accum () const
*/
$method=|bool|accum|

/*
int accumBufferSize () const
*/
$method=|int|accumBufferSize|

/*
bool alpha () const
*/
$method=|bool|alpha|

/*
int alphaBufferSize () const
*/
$method=|int|alphaBufferSize|

/*
int blueBufferSize () const
*/
$method=|int|blueBufferSize|

/*
bool depth () const
*/
$method=|bool|depth|

/*
int depthBufferSize () const
*/
$method=|int|depthBufferSize|

/*
bool directRendering () const
*/
$method=|bool|directRendering|

/*
bool doubleBuffer () const
*/
$method=|bool|doubleBuffer|

/*
int greenBufferSize () const
*/
$method=|int|greenBufferSize|

/*
bool hasOverlay () const
*/
$method=|bool|hasOverlay|

/*
int majorVersion () const
*/
$method=|int|majorVersion|

/*
int minorVersion () const
*/
$method=|int|minorVersion|

/*
int plane () const
*/
$method=|int|plane|

/*
OpenGLContextProfile profile () const
*/
HB_FUNC_STATIC( QGLFORMAT_PROFILE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->profile () );
  }
}

/*
int redBufferSize () const
*/
$method=|int|redBufferSize|

/*
bool rgba () const
*/
$method=|bool|rgba|

/*
bool sampleBuffers () const
*/
$method=|bool|sampleBuffers|

/*
int samples () const
*/
$method=|int|samples|

/*
void setAccum ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETACCUM )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAccum ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAccumBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETACCUMBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAccumBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlpha ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETALPHA )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAlpha ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlphaBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETALPHABUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAlphaBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlueBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETBLUEBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBlueBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDepth ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEPTH )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDepth ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDepthBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEPTHBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDepthBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDirectRendering ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDIRECTRENDERING )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDirectRendering ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleBuffer ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDOUBLEBUFFER )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDoubleBuffer ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGreenBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETGREENBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGreenBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( QGL::FormatOptions opt )
*/
HB_FUNC_STATIC( QGLFORMAT_SETOPTION )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QGL::FormatOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOverlay ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETOVERLAY )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOverlay ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlane ( int plane )
*/
HB_FUNC_STATIC( QGLFORMAT_SETPLANE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPlane ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProfile ( OpenGLContextProfile profile )
*/
HB_FUNC_STATIC( QGLFORMAT_SETPROFILE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setProfile ( (QGLFormat::OpenGLContextProfile) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRedBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETREDBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRedBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRgba ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETRGBA )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRgba ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSampleBuffers ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSAMPLEBUFFERS )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSampleBuffers ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSamples ( int numSamples )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSAMPLES )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSamples ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStencil ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTENCIL )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStencil ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStencilBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTENCILBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStencilBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStereo ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTEREO )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStereo ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSwapInterval ( int interval )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSWAPINTERVAL )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSwapInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVersion ( int major, int minor )
*/
HB_FUNC_STATIC( QGLFORMAT_SETVERSION )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVersion ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool stencil () const
*/
$method=|bool|stencil|

/*
int stencilBufferSize () const
*/
$method=|int|stencilBufferSize|

/*
bool stereo () const
*/
$method=|bool|stereo|

/*
int swapInterval () const
*/
$method=|int|swapInterval|

/*
bool testOption ( QGL::FormatOptions opt ) const
*/
$method=|bool|testOption|QGL::FormatOptions

/*
QGLFormat defaultFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultFormat () );
  _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );
}


/*
QGLFormat defaultOverlayFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTOVERLAYFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultOverlayFormat () );
  _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );
}

/*
static bool hasOpenGL ()
*/
$staticMethod=|bool|hasOpenGL|

/*
static bool hasOpenGLOverlays ()
*/
$staticMethod=|bool|hasOpenGLOverlays|

/*
static OpenGLVersionFlags openGLVersionFlags ()
*/
HB_FUNC_STATIC( QGLFORMAT_OPENGLVERSIONFLAGS )
{
  hb_retni( (int) QGLFormat::openGLVersionFlags () );
}


/*
void setDefaultFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTFORMAT )
{
  QGLFormat::setDefaultFormat ( *PQGLFORMAT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultOverlayFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTOVERLAYFORMAT )
{
  QGLFormat::setDefaultOverlayFormat ( *PQGLFORMAT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
