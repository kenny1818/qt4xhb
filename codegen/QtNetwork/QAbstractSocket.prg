$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QVARIANT
#endif

CLASS QAbstractSocket INHERIT QIODevice

   DATA self_destruction INIT .F.

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

/*
QAbstractSocket ( SocketType socketType, QObject * parent )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_NEW )
{
  QAbstractSocket * o = new QAbstractSocket ( (QAbstractSocket::SocketType) hb_parni(1), PQOBJECT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void abort ()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ABORT )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->abort ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void connectToHost ( const QString & hostName, quint16 port, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CONNECTTOHOST1 )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QAbstractSocket::ReadWrite : hb_parni(3);
    obj->connectToHost ( PQSTRING(1), PQUINT16(2), (QAbstractSocket::OpenMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void connectToHost ( const QHostAddress & address, quint16 port, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CONNECTTOHOST2 )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QAbstractSocket::ReadWrite : hb_parni(3);
    obj->connectToHost ( *PQHOSTADDRESS(1), PQUINT16(2), (QAbstractSocket::OpenMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void disconnectFromHost ()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_DISCONNECTFROMHOST )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->disconnectFromHost ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SocketError error () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ERROR )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}


/*
bool flush ()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_FLUSH )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->flush () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ISVALID )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QHostAddress localAddress () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_LOCALADDRESS )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->localAddress () );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
quint16 localPort () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_LOCALPORT )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT16( obj->localPort () );
  }
}


/*
QHostAddress peerAddress () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERADDRESS )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->peerAddress () );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}

/*
QString peerName () const
*/
$method=|QString|peerName|

/*
quint16 peerPort () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERPORT )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT16( obj->peerPort () );
  }
}


/*
QNetworkProxy proxy () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PROXY )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkProxy * ptr = new QNetworkProxy( obj->proxy () );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
  }
}


/*
qint64 readBufferSize () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_READBUFFERSIZE )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->readBufferSize () );
  }
}


/*
void setProxy ( const QNetworkProxy & networkProxy )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETPROXY )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setProxy ( *PQNETWORKPROXY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETREADBUFFERSIZE )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setReadBufferSize ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setSocketDescriptor ( int socketDescriptor, SocketState socketState = ConnectedState, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETSOCKETDESCRIPTOR )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    int par3 = ISNIL(3)? (int) QAbstractSocket::ReadWrite : hb_parni(3);
    RBOOL( obj->setSocketDescriptor ( PINT(1), (QAbstractSocket::SocketState) par2, (QAbstractSocket::OpenMode) par3 ) );
  }
}


/*
void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETSOCKETOPTION )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSocketOption ( (QAbstractSocket::SocketOption) par1, *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int socketDescriptor () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETDESCRIPTOR )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->socketDescriptor () );
  }
}


/*
QVariant socketOption ( QAbstractSocket::SocketOption option )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETOPTION )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->socketOption ( (QAbstractSocket::SocketOption) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
SocketType socketType () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETTYPE )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->socketType () );
  }
}


/*
SocketState state () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_STATE )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state () );
  }
}


/*
bool waitForConnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORCONNECTED )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForConnected ( OPINT(1,30000) ) );
  }
}


/*
bool waitForDisconnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORDISCONNECTED )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForDisconnected ( OPINT(1,30000) ) );
  }
}


/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ATEND )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}


/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_BYTESAVAILABLE )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->bytesAvailable () );
  }
}


/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_BYTESTOWRITE )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->bytesToWrite () );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CANREADLINE )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canReadLine () );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CLOSE )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ISSEQUENTIAL )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSequential () );
  }
}


/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORBYTESWRITTEN )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForBytesWritten ( OPINT(1,30000) ) );
  }
}


/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORREADYREAD )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForReadyRead ( OPINT(1,30000) ) );
  }
}






#pragma ENDDUMP
