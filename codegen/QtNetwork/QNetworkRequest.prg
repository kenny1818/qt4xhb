%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete
   METHOD attribute
   METHOD hasRawHeader
   METHOD header
   METHOD originatingObject
   METHOD priority
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD setAttribute
   METHOD setHeader
   METHOD setOriginatingObject
   METHOD setPriority
   METHOD setRawHeader
   METHOD setSslConfiguration
   METHOD setUrl
   METHOD sslConfiguration
   METHOD url

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QSslConfiguration>

$prototype=QNetworkRequest ( const QUrl & url = QUrl() )
$internalConstructor=|new1|const QUrl &=QUrl()

$prototype=QNetworkRequest ( const QNetworkRequest & other )
$internalConstructor=|new2|const QNetworkRequest &

//[1]QNetworkRequest ( const QUrl & url = QUrl() )
//[2]QNetworkRequest ( const QNetworkRequest & other )

HB_FUNC_STATIC( QNETWORKREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQURL(1)||ISNIL(1)) )
  {
    QNetworkRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    QNetworkRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QVariant attribute ( Attribute code, const QVariant & defaultValue = QVariant() ) const
$method=|QVariant|attribute|QNetworkRequest::Attribute,const QVariant &=QVariant()

$prototype=bool hasRawHeader ( const QByteArray & headerName ) const
$method=|bool|hasRawHeader|const QByteArray &

$prototype=QVariant header ( KnownHeaders header ) const
$method=|QVariant|header|QNetworkRequest::KnownHeaders

$prototype=QObject * originatingObject () const
$method=|QObject *|originatingObject|

$prototype=Priority priority () const
$method=|QNetworkRequest::Priority|priority|

$prototype=QByteArray rawHeader ( const QByteArray & headerName ) const
$method=|QByteArray|rawHeader|const QByteArray &

$prototype=QList<QByteArray> rawHeaderList () const
$method=|QList<QByteArray>|rawHeaderList|

$prototype=void setAttribute ( Attribute code, const QVariant & value )
$method=|void|setAttribute|QNetworkRequest::Attribute,const QVariant &

$prototype=void setHeader ( KnownHeaders header, const QVariant & value )
$method=|void|setHeader|QNetworkRequest::KnownHeaders,const QVariant &

$prototype=void setOriginatingObject ( QObject * object )
$method=|void|setOriginatingObject|QObject *

$prototype=void setPriority ( Priority priority )
$method=|void|setPriority|QNetworkRequest::Priority

$prototype=void setRawHeader ( const QByteArray & headerName, const QByteArray & headerValue )
$method=|void|setRawHeader|const QByteArray &,const QByteArray &

$prototype=void setSslConfiguration ( const QSslConfiguration & config )
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototype=void setUrl ( const QUrl & url )
$method=|void|setUrl|const QUrl &

$prototype=QSslConfiguration sslConfiguration () const
$method=|QSslConfiguration|sslConfiguration|

$prototype=QUrl url () const
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
