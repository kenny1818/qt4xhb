$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QNetworkProxyQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD localPort
   METHOD peerHostName
   METHOD peerPort
   METHOD protocolTag
   METHOD queryType
   METHOD setLocalPort
   METHOD setPeerHostName
   METHOD setPeerPort
   METHOD setProtocolTag
   METHOD setQueryType
   METHOD setUrl
   METHOD url

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkProxyQuery>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QUrl>

/*
QNetworkProxyQuery ()
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW1 )
{
  QNetworkProxyQuery * o = new QNetworkProxyQuery ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW2 )
{
  int par2 = ISNIL(2)? (int) QNetworkProxyQuery::UrlRequest : hb_parni(2);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *PQURL(1), (QNetworkProxyQuery::QueryType) par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW3 )
{
  int par4 = ISNIL(4)? (int) QNetworkProxyQuery::TcpSocket : hb_parni(4);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( PQSTRING(1), PINT(2), OPQSTRING(3,QString()), (QNetworkProxyQuery::QueryType) par4 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW4 )
{
  int par3 = ISNIL(3)? (int) QNetworkProxyQuery::TcpServer : hb_parni(3);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( PQUINT16(1), OPQSTRING(2,QString()), (QNetworkProxyQuery::QueryType) par3 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkProxyQuery ( const QNetworkProxyQuery & other )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW5 )
{
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *PQNETWORKPROXYQUERY(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW6 )
{
  int par3 = ISNIL(3)? (int) QNetworkProxyQuery::UrlRequest : hb_parni(3);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *PQNETWORKCONFIGURATION(1), *PQURL(2), (QNetworkProxyQuery::QueryType) par3 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW7 )
{
  int par5 = ISNIL(5)? (int) QNetworkProxyQuery::TcpSocket : hb_parni(5);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *PQNETWORKCONFIGURATION(1), PQSTRING(2), PINT(3), OPQSTRING(4,QString()), (QNetworkProxyQuery::QueryType) par5 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW8 )
{
  int par4 = ISNIL(4)? (int) QNetworkProxyQuery::TcpServer : hb_parni(4);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *PQNETWORKCONFIGURATION(1), PQUINT16(2), OPQSTRING(3,QString()), (QNetworkProxyQuery::QueryType) par4 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QNetworkProxyQuery ()
//[2]QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
//[3]QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
//[4]QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
//[5]QNetworkProxyQuery ( const QNetworkProxyQuery & other )
//[6]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
//[7]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
//[8]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQURL(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW2 );
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW3 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW5 );
  }
  else if( ISNUMPAR(3) && ISQNETWORKCONFIGURATION(1) && ISQURL(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW6 );
  }
  else if( ISNUMPAR(5) && ISQNETWORKCONFIGURATION(1) && ISCHAR(2) && ISNUM(3) && ISCHAR(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW7 );
  }
  else if( ISNUMPAR(4) && ISQNETWORKCONFIGURATION(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int localPort () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_LOCALPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->localPort () );
  }
}

/*
QString peerHostName () const
*/
$method=|QString|peerHostName|

/*
int peerPort () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PEERPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->peerPort () );
  }
}

/*
QString protocolTag () const
*/
$method=|QString|protocolTag|

/*
QueryType queryType () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_QUERYTYPE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->queryType () );
  }
}


/*
void setLocalPort ( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETLOCALPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLocalPort ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPeerHostName ( const QString & hostname )
*/
$method=|void|setPeerHostName|const QString &

/*
void setPeerPort ( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPEERPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPeerPort ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProtocolTag ( const QString & protocolTag )
*/
$method=|void|setProtocolTag|const QString &

/*
void setQueryType ( QueryType type )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETQUERYTYPE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setQueryType ( (QNetworkProxyQuery::QueryType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETURL )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_URL )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}

$extraMethods

#pragma ENDDUMP
