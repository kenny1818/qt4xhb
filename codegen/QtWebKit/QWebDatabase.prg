%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBSECURITYORIGIN
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD displayName
   METHOD expectedSize
   METHOD fileName
   METHOD name
   METHOD origin
   METHOD size
   METHOD removeAllDatabases
   METHOD removeDatabase

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QWebSecurityOrigin>

$prototype=QWebDatabase ( const QWebDatabase & other )
$constructor=|new|const QWebDatabase &

$deleteMethod

$prototype=QString displayName () const
$method=|QString|displayName|

$prototype=qint64 expectedSize () const
$method=|qint64|expectedSize|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QString name () const
$method=|QString|name|

$prototype=QWebSecurityOrigin origin () const
$method=|QWebSecurityOrigin|origin|

$prototype=qint64 size () const
$method=|qint64|size|

$prototype=static void removeAllDatabases ()
$staticMethod=|void|removeAllDatabases|

$prototype=static void removeDatabase ( const QWebDatabase & db )
$staticMethod=|void|removeDatabase|const QWebDatabase &

$extraMethods

#pragma ENDDUMP
