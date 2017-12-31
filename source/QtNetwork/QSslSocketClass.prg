/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
REQUEST QVARIANT
REQUEST QSSLCONFIGURATION
REQUEST QSSLERROR
#endif

CLASS QSslSocket INHERIT QTcpSocket

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD abort
   METHOD addCaCertificate
   METHOD addCaCertificates1
   METHOD addCaCertificates2
   METHOD addCaCertificates
   METHOD caCertificates
   METHOD ciphers
   METHOD connectToHostEncrypted1
   METHOD connectToHostEncrypted2
   METHOD connectToHostEncrypted
   METHOD encryptedBytesAvailable
   METHOD encryptedBytesToWrite
   METHOD flush
   METHOD ignoreSslErrors1
   METHOD ignoreSslErrors2
   METHOD ignoreSslErrors
   METHOD isEncrypted
   METHOD localCertificate
   METHOD mode
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD peerVerifyDepth
   METHOD peerVerifyMode
   METHOD privateKey
   METHOD protocol
   METHOD sessionCipher
   METHOD setCaCertificates
   METHOD setCiphers1
   METHOD setCiphers2
   METHOD setCiphers
   METHOD setLocalCertificate1
   METHOD setLocalCertificate2
   METHOD setLocalCertificate
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
   METHOD setPrivateKey1
   METHOD setPrivateKey2
   METHOD setPrivateKey
   METHOD setProtocol
   METHOD setReadBufferSize
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD setSslConfiguration
   METHOD socketOption
   METHOD sslConfiguration
   METHOD sslErrors
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD waitForEncrypted
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD startClientEncryption
   METHOD startServerEncryption
   METHOD addDefaultCaCertificate
   METHOD addDefaultCaCertificates1
   METHOD addDefaultCaCertificates2
   METHOD addDefaultCaCertificates
   METHOD defaultCaCertificates
   METHOD defaultCiphers
   METHOD setDefaultCaCertificates
   METHOD setDefaultCiphers
   METHOD supportedCiphers
   METHOD supportsSsl
   METHOD systemCaCertificates

   METHOD onEncrypted
   METHOD onEncryptedBytesWritten
   METHOD onModeChanged
   METHOD onPeerVerifyError
   METHOD onSslErrors

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSslSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSslKey>
#include <QSslCipher>
#include <QSslConfiguration>

/*
QSslSocket ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSSLSOCKET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSslSocket * o = new QSslSocket ( OPQOBJECT(1,0) );
    _qt4xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSSLSOCKET_DELETE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void abort ()
*/
HB_FUNC_STATIC( QSSLSOCKET_ABORT )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->abort ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addCaCertificate ( const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
    {
      obj->addCaCertificate ( *PQSSLCERTIFICATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES1 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      RBOOL( obj->addCaCertificates ( PQSTRING(1), ISNIL(2)? (QSsl::EncodingFormat) QSsl::Pem : (QSsl::EncodingFormat) hb_parni(2), ISNIL(3)? (QRegExp::PatternSyntax) QRegExp::FixedString : (QRegExp::PatternSyntax) hb_parni(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void addCaCertificates ( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES2 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QSslCertificate> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->addCaCertificates ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDCACERTIFICATES1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDCACERTIFICATES2 );
  }
}

/*
QList<QSslCertificate> caCertificates () const
*/
HB_FUNC_STATIC( QSSLSOCKET_CACERTIFICATES )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QSslCertificate> list = obj->caCertificates ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QSslCipher> ciphers () const
*/
HB_FUNC_STATIC( QSSLSOCKET_CIPHERS )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QSslCipher> list = obj->ciphers ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
*/
HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED1 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
    {
      obj->connectToHostEncrypted ( PQSTRING(1), PQUINT16(2), ISNIL(3)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )
*/
HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED2 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(3,4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISOPTNUM(4) )
    {
      obj->connectToHostEncrypted ( PQSTRING(1), PQUINT16(2), PQSTRING(3), ISNIL(4)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
//[2]void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )

HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED1 );
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED2 );
  }
}

/*
qint64 encryptedBytesAvailable () const
*/
HB_FUNC_STATIC( QSSLSOCKET_ENCRYPTEDBYTESAVAILABLE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->encryptedBytesAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 encryptedBytesToWrite () const
*/
HB_FUNC_STATIC( QSSLSOCKET_ENCRYPTEDBYTESTOWRITE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->encryptedBytesToWrite () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool flush ()
*/
HB_FUNC_STATIC( QSSLSOCKET_FLUSH )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->flush () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void ignoreSslErrors ( const QList<QSslError> & errors )
*/
HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS1 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QSslError> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->ignoreSslErrors ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ignoreSslErrors ()
*/
HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS2 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->ignoreSslErrors ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]void ignoreSslErrors ()

HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_IGNORESSLERRORS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_IGNORESSLERRORS2 );
  }
}

/*
bool isEncrypted () const
*/
HB_FUNC_STATIC( QSSLSOCKET_ISENCRYPTED )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isEncrypted () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSslCertificate localCertificate () const
*/
HB_FUNC_STATIC( QSSLSOCKET_LOCALCERTIFICATE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslCertificate * ptr = new QSslCertificate( obj->localCertificate () );
      _qt4xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
SslMode mode () const
*/
HB_FUNC_STATIC( QSSLSOCKET_MODE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->mode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSslCertificate peerCertificate () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PEERCERTIFICATE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslCertificate * ptr = new QSslCertificate( obj->peerCertificate () );
      _qt4xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QSslCertificate> peerCertificateChain () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PEERCERTIFICATECHAIN )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QSslCertificate> list = obj->peerCertificateChain ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
int peerVerifyDepth () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PEERVERIFYDEPTH )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->peerVerifyDepth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSslSocket::PeerVerifyMode peerVerifyMode () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PEERVERIFYMODE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->peerVerifyMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSslKey privateKey () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PRIVATEKEY )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslKey * ptr = new QSslKey( obj->privateKey () );
      _qt4xhb_createReturnClass ( ptr, "QSSLKEY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSsl::SslProtocol protocol () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PROTOCOL )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->protocol () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSslCipher sessionCipher () const
*/
HB_FUNC_STATIC( QSSLSOCKET_SESSIONCIPHER )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslCipher * ptr = new QSslCipher( obj->sessionCipher () );
      _qt4xhb_createReturnClass ( ptr, "QSSLCIPHER", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCaCertificates ( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETCACERTIFICATES )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QSslCertificate> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->setCaCertificates ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCiphers ( const QList<QSslCipher> & ciphers )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS1 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QSslCipher> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->setCiphers ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCiphers ( const QString & ciphers )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS2 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setCiphers ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCiphers ( const QList<QSslCipher> & ciphers )
//[2]void setCiphers ( const QString & ciphers )

HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETCIPHERS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETCIPHERS2 );
  }
}

/*
void setLocalCertificate ( const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE1 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
    {
      obj->setLocalCertificate ( *PQSSLCERTIFICATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE2 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
      obj->setLocalCertificate ( PQSTRING(1), ISNIL(2)? (QSsl::EncodingFormat) QSsl::Pem : (QSsl::EncodingFormat) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setLocalCertificate ( const QSslCertificate & certificate )
//[2]void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )

HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE )
{
  if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETLOCALCERTIFICATE1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETLOCALCERTIFICATE2 );
  }
}

/*
void setPeerVerifyDepth ( int depth )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPEERVERIFYDEPTH )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPeerVerifyDepth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPeerVerifyMode ( QSslSocket::PeerVerifyMode mode )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPEERVERIFYMODE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPeerVerifyMode ( (QSslSocket::PeerVerifyMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPrivateKey ( const QSslKey & key )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPRIVATEKEY1 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSSLKEY(1) )
    {
      obj->setPrivateKey ( *PQSSLKEY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPRIVATEKEY2 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && (ISQBYTEARRAY(4)||ISNIL(4)) )
    {
      obj->setPrivateKey ( PQSTRING(1), ISNIL(2)? (QSsl::KeyAlgorithm) QSsl::Rsa : (QSsl::KeyAlgorithm) hb_parni(2), ISNIL(3)? (QSsl::EncodingFormat) QSsl::Pem : (QSsl::EncodingFormat) hb_parni(3), ISNIL(4)? QByteArray() : *(QByteArray *) _qt4xhb_itemGetPtr(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setPrivateKey ( const QSslKey & key )
//[2]void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )

HB_FUNC_STATIC( QSSLSOCKET_SETPRIVATEKEY )
{
  if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETPRIVATEKEY1 );
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISQBYTEARRAY(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETPRIVATEKEY2 );
  }
}

/*
void setProtocol ( QSsl::SslProtocol protocol )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPROTOCOL )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setProtocol ( (QSsl::SslProtocol) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETREADBUFFERSIZE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setReadBufferSize ( PQINT64(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setSocketDescriptor ( int socketDescriptor, SocketState state = ConnectedState, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETSOCKETDESCRIPTOR )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      RBOOL( obj->setSocketDescriptor ( PINT(1), ISNIL(2)? (QAbstractSocket::SocketState) QAbstractSocket::ConnectedState : (QAbstractSocket::SocketState) hb_parni(2), ISNIL(3)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETSOCKETOPTION )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
      obj->setSocketOption ( (QAbstractSocket::SocketOption) hb_parni(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSslConfiguration ( const QSslConfiguration & configuration )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETSSLCONFIGURATION )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
    {
      obj->setSslConfiguration ( *PQSSLCONFIGURATION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant socketOption ( QAbstractSocket::SocketOption option )
*/
HB_FUNC_STATIC( QSSLSOCKET_SOCKETOPTION )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->socketOption ( (QAbstractSocket::SocketOption) hb_parni(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSslConfiguration sslConfiguration () const
*/
HB_FUNC_STATIC( QSSLSOCKET_SSLCONFIGURATION )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslConfiguration * ptr = new QSslConfiguration( obj->sslConfiguration () );
      _qt4xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QSslError> sslErrors () const
*/
HB_FUNC_STATIC( QSSLSOCKET_SSLERRORS )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QSslError> list = obj->sslErrors ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QSSLERROR" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslError *) new QSslError ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
bool waitForConnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORCONNECTED )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      RBOOL( obj->waitForConnected ( OPINT(1,30000) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool waitForDisconnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORDISCONNECTED )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      RBOOL( obj->waitForDisconnected ( OPINT(1,30000) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool waitForEncrypted ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORENCRYPTED )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      RBOOL( obj->waitForEncrypted ( OPINT(1,30000) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QSSLSOCKET_ATEND )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->atEnd () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QSSLSOCKET_BYTESAVAILABLE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->bytesAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QSSLSOCKET_BYTESTOWRITE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->bytesToWrite () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QSSLSOCKET_CANREADLINE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->canReadLine () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void close ()
*/
HB_FUNC_STATIC( QSSLSOCKET_CLOSE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->close ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORBYTESWRITTEN )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      RBOOL( obj->waitForBytesWritten ( OPINT(1,30000) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORREADYREAD )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      RBOOL( obj->waitForReadyRead ( OPINT(1,30000) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void startClientEncryption ()
*/
HB_FUNC_STATIC( QSSLSOCKET_STARTCLIENTENCRYPTION )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->startClientEncryption ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void startServerEncryption ()
*/
HB_FUNC_STATIC( QSSLSOCKET_STARTSERVERENCRYPTION )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->startServerEncryption ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void addDefaultCaCertificate ( const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATE )
{
    if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
      QSslSocket::addDefaultCaCertificate ( *PQSSLCERTIFICATE(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES1 )
{
    if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
      RBOOL( QSslSocket::addDefaultCaCertificates ( PQSTRING(1), ISNIL(2)? (QSsl::EncodingFormat) QSsl::Pem : (QSsl::EncodingFormat) hb_parni(2), ISNIL(3)? (QRegExp::PatternSyntax) QRegExp::FixedString : (QRegExp::PatternSyntax) hb_parni(3) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES2 )
{
QList<QSslCertificate> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QSslSocket::addDefaultCaCertificates ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES2 );
  }
}

/*
QList<QSslCertificate> defaultCaCertificates ()
*/
HB_FUNC_STATIC( QSSLSOCKET_DEFAULTCACERTIFICATES )
{
  QList<QSslCertificate> list = QSslSocket::defaultCaCertificates ();
  PHB_DYNS pDynSym;
  pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
QList<QSslCipher> defaultCiphers ()
*/
HB_FUNC_STATIC( QSSLSOCKET_DEFAULTCIPHERS )
{
  QList<QSslCipher> list = QSslSocket::defaultCiphers ();
  PHB_DYNS pDynSym;
  pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
void setDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETDEFAULTCACERTIFICATES )
{
QList<QSslCertificate> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QSslSocket::setDefaultCaCertificates ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultCiphers ( const QList<QSslCipher> & ciphers )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETDEFAULTCIPHERS )
{
QList<QSslCipher> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QSslSocket::setDefaultCiphers ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QSslCipher> supportedCiphers ()
*/
HB_FUNC_STATIC( QSSLSOCKET_SUPPORTEDCIPHERS )
{
  QList<QSslCipher> list = QSslSocket::supportedCiphers ();
  PHB_DYNS pDynSym;
  pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static bool supportsSsl ()
*/
HB_FUNC_STATIC( QSSLSOCKET_SUPPORTSSSL )
{
    if( ISNUMPAR(0) )
  {
      RBOOL( QSslSocket::supportsSsl () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QSslCertificate> systemCaCertificates ()
*/
HB_FUNC_STATIC( QSSLSOCKET_SYSTEMCACERTIFICATES )
{
  QList<QSslCertificate> list = QSslSocket::systemCaCertificates ();
  PHB_DYNS pDynSym;
  pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

#pragma ENDDUMP
