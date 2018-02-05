%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QVARIANT
#endif

CLASS QAbstractSocket INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD connectToHost1
   METHOD connectToHost2
   METHOD disconnectFromHost
   METHOD error
   METHOD flush
   METHOD isValid
   METHOD localAddress
   METHOD localPort
   METHOD peerAddress
   METHOD peerName
   METHOD peerPort
   METHOD proxy
   METHOD readBufferSize
   METHOD setProxy
   METHOD setReadBufferSize
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD socketDescriptor
   METHOD socketOption
   METHOD socketType
   METHOD state
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD atEnd
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
   METHOD onHostFound
   METHOD onProxyAuthenticationRequired
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QHostAddress>
#include <QNetworkProxy>

$prototype=QAbstractSocket ( SocketType socketType, QObject * parent )
$constructor=|new|QAbstractSocket::SocketType,QObject *

$deleteMethod

$prototype=void abort ()
$method=|void|abort|

$prototype=void connectToHost ( const QString & hostName, quint16 port, OpenMode openMode = ReadWrite )
$method=|void|connectToHost,connectToHost1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToHost ( const QHostAddress & address, quint16 port, OpenMode openMode = ReadWrite )
$method=|void|connectToHost,connectToHost2|const QHostAddress &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void disconnectFromHost ()
$method=|void|disconnectFromHost|

$prototype=SocketError error () const
$method=|QAbstractSocket::SocketError|error|

$prototype=bool flush ()
$method=|bool|flush|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QHostAddress localAddress () const
$method=|QHostAddress|localAddress|

$prototype=quint16 localPort () const
$method=|quint16|localPort|

$prototype=QHostAddress peerAddress () const
$method=|QHostAddress|peerAddress|

$prototype=QString peerName () const
$method=|QString|peerName|

$prototype=quint16 peerPort () const
$method=|quint16|peerPort|

$prototype=QNetworkProxy proxy () const
$method=|QNetworkProxy|proxy|

$prototype=qint64 readBufferSize () const
$method=|qint64|readBufferSize|

$prototype=void setProxy ( const QNetworkProxy & networkProxy )
$method=|void|setProxy|const QNetworkProxy &

$prototype=void setReadBufferSize ( qint64 size )
$method=|void|setReadBufferSize|qint64

$prototype=bool setSocketDescriptor ( int socketDescriptor, SocketState socketState = ConnectedState, OpenMode openMode = ReadWrite )
$method=|bool|setSocketDescriptor|int,QAbstractSocket::SocketState=QAbstractSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
$method=|void|setSocketOption|QAbstractSocket::SocketOption,const QVariant &

$prototype=int socketDescriptor () const
$method=|int|socketDescriptor|

$prototype=QVariant socketOption ( QAbstractSocket::SocketOption option )
$method=|QVariant|socketOption|QAbstractSocket::SocketOption

$prototype=SocketType socketType () const
$method=|QAbstractSocket::SocketType|socketType|

$prototype=SocketState state () const
$method=|QAbstractSocket::SocketState|state|

$prototype=bool waitForConnected ( int msecs = 30000 )
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected ( int msecs = 30000 )
$method=|bool|waitForDisconnected|int=30000

$prototype=virtual bool atEnd () const
$virtualMethod=|bool|atEnd|

$prototype=virtual qint64 bytesAvailable () const
$virtualMethod=|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite () const
$virtualMethod=|qint64|bytesToWrite|

$prototype=virtual bool canReadLine () const
$virtualMethod=|bool|canReadLine|

$prototype=virtual void close ()
$virtualMethod=|void|close|

$prototype=virtual bool isSequential () const
$virtualMethod=|bool|isSequential|

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$virtualMethod=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$virtualMethod=|bool|waitForReadyRead|int=30000

#pragma ENDDUMP
