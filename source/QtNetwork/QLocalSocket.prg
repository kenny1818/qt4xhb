/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QLocalSocket INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD connectToServer
   METHOD disconnectFromServer
   METHOD error
   METHOD flush
   METHOD fullServerName
   METHOD isValid
   METHOD readBufferSize
   METHOD serverName
   METHOD setReadBufferSize
   METHOD state
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLocalSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtNetwork/QLocalSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QLocalSocket ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QLocalSocket * o = new QLocalSocket( OPQOBJECT(1,0) );
    Qt4xHb::_qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLOCALSOCKET_DELETE )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
void abort ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_ABORT )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->abort();
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
void connectToServer ( const QString & name, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QLOCALSOCKET_CONNECTTOSERVER )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
#endif
      obj->connectToServer( PQSTRING(1), ISNIL(2)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(2) );
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
void disconnectFromServer ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_DISCONNECTFROMSERVER )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disconnectFromServer();
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
LocalSocketError error () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_ERROR )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
bool flush ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_FLUSH )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flush() );
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
QString fullServerName () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_FULLSERVERNAME )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fullServerName() );
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
HB_FUNC_STATIC( QLOCALSOCKET_ISVALID )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

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
qint64 readBufferSize () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_READBUFFERSIZE )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->readBufferSize() );
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
QString serverName () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_SERVERNAME )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->serverName() );
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
void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QLOCALSOCKET_SETREADBUFFERSIZE )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setReadBufferSize( PQINT64(1) );
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
LocalSocketState state () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_STATE )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
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
bool waitForConnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORCONNECTED )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->waitForConnected( OPINT(1,30000) ) );
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
bool waitForDisconnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORDISCONNECTED )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->waitForDisconnected( OPINT(1,30000) ) );
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
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_BYTESAVAILABLE )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesAvailable() );
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
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_BYTESTOWRITE )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesToWrite() );
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
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_CANREADLINE )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->canReadLine() );
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
virtual void close ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_CLOSE )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
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
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_ISSEQUENTIAL )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSequential() );
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
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORBYTESWRITTEN )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->waitForBytesWritten( OPINT(1,30000) ) );
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
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORREADYREAD )
{
  QLocalSocket * obj = (QLocalSocket *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->waitForReadyRead( OPINT(1,30000) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QLocalSocketSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QLOCALSOCKET_ONCONNECTED )
{
  QLocalSocketSlots_connect_signal( "connected()", "connected()" );
}

HB_FUNC_STATIC( QLOCALSOCKET_ONDISCONNECTED )
{
  QLocalSocketSlots_connect_signal( "disconnected()", "disconnected()" );
}

HB_FUNC_STATIC( QLOCALSOCKET_ONERROR )
{
  QLocalSocketSlots_connect_signal( "error(QLocalSocket::LocalSocketError)", "error(QLocalSocket::LocalSocketError)" );
}

HB_FUNC_STATIC( QLOCALSOCKET_ONSTATECHANGED )
{
  QLocalSocketSlots_connect_signal( "stateChanged(QLocalSocket::LocalSocketState)", "stateChanged(QLocalSocket::LocalSocketState)" );
}

#pragma ENDDUMP