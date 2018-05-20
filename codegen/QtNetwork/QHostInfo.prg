%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QHOSTINFO
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD addresses
   METHOD error
   METHOD errorString
   METHOD hostName
   METHOD lookupId
   METHOD setAddresses
   METHOD setError
   METHOD setErrorString
   METHOD setHostName
   METHOD setLookupId
   METHOD abortHostLookup
   METHOD fromName
   METHOD localDomainName
   METHOD localHostName
   METHOD lookupHost

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHostInfo ( int id = -1 )
$internalConstructor=|new1|int=-1

$prototype=QHostInfo ( const QHostInfo & other )
$internalConstructor=|new2|const QHostInfo &

//[1]QHostInfo ( int id = -1 )
//[2]QHostInfo ( const QHostInfo & other )

HB_FUNC_STATIC( QHOSTINFO_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QHostInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQHOSTINFO(1) )
  {
    QHostInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QList<QHostAddress> addresses () const
$method=|QList<QHostAddress>|addresses|

$prototype=HostInfoError error () const
$method=|QHostInfo::HostInfoError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString hostName () const
$method=|QString|hostName|

$prototype=int lookupId () const
$method=|int|lookupId|

$prototype=void setAddresses ( const QList<QHostAddress> & addresses )
$method=|void|setAddresses|const QList<QHostAddress> &

$prototype=void setError ( HostInfoError error )
$method=|void|setError|QHostInfo::HostInfoError

$prototype=void setErrorString ( const QString & str )
$method=|void|setErrorString|const QString &

$prototype=void setHostName ( const QString & hostName )
$method=|void|setHostName|const QString &

$prototype=void setLookupId ( int id )
$method=|void|setLookupId|int

$prototype=static void abortHostLookup ( int id )
$staticMethod=|void|abortHostLookup|int

$prototype=static QHostInfo fromName ( const QString & name )
$staticMethod=|QHostInfo|fromName|const QString &

$prototype=static QString localDomainName ()
$staticMethod=|QString|localDomainName|

$prototype=static QString localHostName ()
$staticMethod=|QString|localHostName|

$prototype=static int lookupHost ( const QString & name, QObject * receiver, const char * member )
$staticMethod=|int|lookupHost|const QString &,QObject *,const char *

$extraMethods

#pragma ENDDUMP
