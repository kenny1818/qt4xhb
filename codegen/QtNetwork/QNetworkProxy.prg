%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKPROXY
#endif

CLASS QNetworkProxy

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD capabilities
   METHOD hostName
   METHOD isCachingProxy
   METHOD isTransparentProxy
   METHOD password
   METHOD port
   METHOD setCapabilities
   METHOD setHostName
   METHOD setPassword
   METHOD setPort
   METHOD setType
   METHOD setUser
   METHOD type
   METHOD user
   METHOD applicationProxy
   METHOD setApplicationProxy

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkProxy>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QNetworkProxy ()
$internalConstructor=|new1|

$prototype=QNetworkProxy ( ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
$internalConstructor=|new2|QNetworkProxy::ProxyType,const QString &=QString(),quint16=0,const QString &=QString(),const QString &=QString()

$prototype=QNetworkProxy ( const QNetworkProxy & other )
$internalConstructor=|new3|const QNetworkProxy &

//[1]QNetworkProxy ()
//[2]QNetworkProxy ( ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
//[3]QNetworkProxy ( const QNetworkProxy & other )

HB_FUNC_STATIC( QNETWORKPROXY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkProxy_new1();
  }
  else if( ISBETWEEN(1,5) && ISNUM(1) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3))  && (ISCHAR(4)||ISNIL(4)) && (ISCHAR(5)||ISNIL(5)) )
  {
    QNetworkProxy_new2();
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
  {
    QNetworkProxy_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Capabilities capabilities () const
$method=|QNetworkProxy::Capabilities|capabilities|

$prototype=QString hostName () const
$method=|QString|hostName|

$prototype=bool isCachingProxy () const
$method=|bool|isCachingProxy|

$prototype=bool isTransparentProxy () const
$method=|bool|isTransparentProxy|

$prototype=QString password () const
$method=|QString|password|

$prototype=quint16 port () const
$method=|quint16|port|

$prototype=void setCapabilities ( Capabilities capabilities )
$method=|void|setCapabilities|QNetworkProxy::Capabilities

$prototype=void setHostName ( const QString & hostName )
$method=|void|setHostName|const QString &

$prototype=void setPassword ( const QString & password )
$method=|void|setPassword|const QString &

$prototype=void setPort ( quint16 port )
$method=|void|setPort|quint16

$prototype=void setType ( QNetworkProxy::ProxyType type )
$method=|void|setType|QNetworkProxy::ProxyType

$prototype=void setUser ( const QString & user )
$method=|void|setUser|const QString &

$prototype=QNetworkProxy::ProxyType type () const
$method=|QNetworkProxy::ProxyType|type|

$prototype=QString user () const
$method=|QString|user|

$prototype=static QNetworkProxy applicationProxy ()
$staticMethod=|QNetworkProxy|applicationProxy|

$prototype=static void setApplicationProxy ( const QNetworkProxy & networkProxy )
$staticMethod=|void|setApplicationProxy|const QNetworkProxy &

$extraMethods

#pragma ENDDUMP
