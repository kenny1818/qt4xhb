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

$prototype=QMovie ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
$internalConstructor=|new2|QIODevice *,const QByteArray &=QByteArray(),QObject *=0

$prototype=QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray(),QObject *=0

//[1]QMovie ( QObject * parent = 0 )
//[2]QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
//[3]QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )

HB_FUNC_STATIC( QMOVIE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QMovie_new1();
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISQBYTEARRAY(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QMovie_new2();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QMovie_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QColor  backgroundColor () const
$method=|QColor|backgroundColor|

$prototype=CacheMode  cacheMode () const
$method=|QMovie::CacheMode|cacheMode|

$prototype=int currentFrameNumber () const
$method=|int|currentFrameNumber|

$prototype=QImage  currentImage () const
$method=|QImage|currentImage|

$prototype=QPixmap  currentPixmap () const
$method=|QPixmap|currentPixmap|

$prototype=QIODevice *  device () const
$method=|QIODevice *|device|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QByteArray  format () const
$method=|QByteArray|format|

$prototype=int frameCount () const
$method=|int|frameCount|

$prototype=QRect  frameRect () const
$method=|QRect|frameRect|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool jumpToFrame ( int frameNumber )
$method=|bool|jumpToFrame|int

$prototype=int loopCount () const
$method=|int|loopCount|

$prototype=int nextFrameDelay () const
$method=|int|nextFrameDelay|

$prototype=QSize  scaledSize ()
$method=|QSize|scaledSize|

$prototype=void  setBackgroundColor ( const QColor & color )
$method=|void|setBackgroundColor|const QColor &

$prototype=void  setCacheMode ( CacheMode mode )
$method=|void|setCacheMode|QMovie::CacheMode

$prototype=void  setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void  setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void  setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=void  setScaledSize ( const QSize & size )
$method=|void|setScaledSize|const QSize &

$prototype=int speed () const
$method=|int|speed|

$prototype=MovieState  state () const
$method=|QMovie::MovieState|state|

$prototype=bool jumpToNextFrame ()
$method=|bool|jumpToNextFrame|

$prototype=void setPaused ( bool paused )
$method=|void|setPaused|bool

$prototype=void setSpeed ( int percentSpeed )
$method=|void|setSpeed|int

$prototype=void start ()
$method=|void|start|

$prototype=void stop ()
$method=|void|stop|

$prototype=static QList<QByteArray> supportedFormats ()
HB_FUNC_STATIC( QMOVIE_SUPPORTEDFORMATS )
{
  QList<QByteArray> list = QMovie::supportedFormats ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
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
