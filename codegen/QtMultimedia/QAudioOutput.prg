$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAudioOutput INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bufferSize
   METHOD bytesFree
   METHOD elapsedUSecs
   METHOD error
   METHOD format
   METHOD notifyInterval
   METHOD periodSize
   METHOD processedUSecs
   METHOD reset
   METHOD resume
   METHOD setBufferSize
   METHOD setNotifyInterval
   METHOD start1
   METHOD start2
   METHOD start
   METHOD state
   METHOD stop
   METHOD suspend

   METHOD onNotify
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAudioOutput>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAudioOutput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
*/
$constructor=|new1|const QAudioFormat &=QAudioFormat(),QObject *=0

/*
QAudioOutput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
*/
$constructor=|new2|const QAudioDeviceInfo &,const QAudioFormat &=QAudioFormat(),QObject *=0

//[1]QAudioOutput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
//[2]QAudioOutput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )

HB_FUNC_STATIC( QAUDIOOUTPUT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQAUDIOFORMAT(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int bufferSize () const
*/
$method=|int|bufferSize|

/*
int bytesFree () const
*/
$method=|int|bytesFree|

/*
qint64 elapsedUSecs () const
*/
$method=|qint64|elapsedUSecs|

/*
QAudio::Error error () const
*/
$method=|QAudio::Error|error|

/*
QAudioFormat format () const
*/
$method=|QAudioFormat|format|

/*
int notifyInterval () const
*/
$method=|int|notifyInterval|

/*
int periodSize () const
*/
$method=|int|periodSize|

/*
qint64 processedUSecs () const
*/
$method=|qint64|processedUSecs|

/*
void reset ()
*/
$method=|void|reset|

/*
void resume ()
*/
$method=|void|resume|

/*
void setBufferSize ( int value )
*/
$method=|void|setBufferSize|int

/*
void setNotifyInterval ( int ms )
*/
$method=|void|setNotifyInterval|int

/*
void start ( QIODevice * device )
*/
$method=|void|start,start1|QIODevice *

/*
QIODevice * start ()
*/
$method=|QIODevice *|start,start2|

//[1]void start ( QIODevice * device )
//[2]QIODevice * start ()

HB_FUNC_STATIC( QAUDIOOUTPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_START1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_START2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAudio::State state () const
*/
$method=|QAudio::State|state|

/*
void stop ()
*/
$method=|void|stop|

/*
void suspend ()
*/
$method=|void|suspend|

#pragma ENDDUMP
