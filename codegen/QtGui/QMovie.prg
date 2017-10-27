$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QMovie INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD backgroundColor
   METHOD cacheMode
   METHOD currentFrameNumber
   METHOD currentImage
   METHOD currentPixmap
   METHOD device
   METHOD fileName
   METHOD format
   METHOD frameCount
   METHOD frameRect
   METHOD isValid
   METHOD jumpToFrame
   METHOD loopCount
   METHOD nextFrameDelay
   METHOD scaledSize
   METHOD setBackgroundColor
   METHOD setCacheMode
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD setScaledSize
   METHOD speed
   METHOD state
   METHOD jumpToNextFrame
   METHOD setPaused
   METHOD setSpeed
   METHOD start
   METHOD stop
   METHOD supportedFormats

   METHOD onError
   METHOD onFinished
   METHOD onFrameChanged
   METHOD onResized
   METHOD onStarted
   METHOD onStateChanged
   METHOD onUpdated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMovie>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QColor>
#include <QPixmap>

/*
QMovie ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW1 )
{
  QMovie * o = new QMovie ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW2 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QMovie * o = new QMovie ( PQIODEVICE(1), par2, OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW3 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QMovie * o = new QMovie ( PQSTRING(1), par2, OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QMovie ( QObject * parent = 0 )
//[2]QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
//[3]QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )

HB_FUNC_STATIC( QMOVIE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QMOVIE_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISQBYTEARRAY(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QMOVIE_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QMOVIE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QColor  backgroundColor () const
*/
$method=|QColor|backgroundColor|

/*
CacheMode  cacheMode () const
*/
$method=|QMovie::CacheMode|cacheMode|

/*
int currentFrameNumber () const
*/
$method=|int|currentFrameNumber|

/*
QImage  currentImage () const
*/
$method=|QImage|currentImage|

/*
QPixmap  currentPixmap () const
*/
$method=|QPixmap|currentPixmap|

/*
QIODevice *  device () const
*/
$method=|QIODevice *|device|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QByteArray  format () const
*/
$method=|QByteArray|format|

/*
int frameCount () const
*/
$method=|int|frameCount|

/*
QRect  frameRect () const
*/
$method=|QRect|frameRect|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool jumpToFrame ( int frameNumber )
*/
$method=|bool|jumpToFrame|int

/*
int loopCount () const
*/
$method=|int|loopCount|

/*
int nextFrameDelay () const
*/
$method=|int|nextFrameDelay|

/*
QSize  scaledSize ()
*/
$method=|QSize|scaledSize|

/*
void  setBackgroundColor ( const QColor & color )
*/
$method=|void|setBackgroundColor|const QColor &

/*
void  setCacheMode ( CacheMode mode )
*/
$method=|void|setCacheMode|QMovie::CacheMode

/*
void  setDevice ( QIODevice * device )
*/
$method=|void|setDevice|QIODevice *

/*
void  setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void  setFormat ( const QByteArray & format )
*/
$method=|void|setFormat|const QByteArray &

/*
void  setScaledSize ( const QSize & size )
*/
$method=|void|setScaledSize|const QSize &

/*
int speed () const
*/
$method=|int|speed|

/*
MovieState  state () const
*/
$method=|QMovie::MovieState|state|

/*
bool jumpToNextFrame ()
*/
$method=|bool|jumpToNextFrame|

/*
void setPaused ( bool paused )
*/
$method=|void|setPaused|bool

/*
void setSpeed ( int percentSpeed )
*/
$method=|void|setSpeed|int

/*
void start ()
*/
$method=|void|start|

/*
void stop ()
*/
$method=|void|stop|

/*
static QList<QByteArray> supportedFormats ()
*/
HB_FUNC_STATIC( QMOVIE_SUPPORTEDFORMATS )
{
  QList<QByteArray> list = QMovie::supportedFormats ();
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

#pragma ENDDUMP
