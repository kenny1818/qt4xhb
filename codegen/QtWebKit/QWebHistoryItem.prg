%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QDATETIME
REQUEST QURL
REQUEST QVARIANT
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD icon
   METHOD isValid
   METHOD lastVisited
   METHOD originalUrl
   METHOD setUserData
   METHOD title
   METHOD url
   METHOD userData

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$prototype=QWebHistoryItem ( const QWebHistoryItem & other )
$constructor=|new|const QWebHistoryItem &

$deleteMethod

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QDateTime lastVisited () const
$method=|QDateTime|lastVisited|

$prototype=QUrl originalUrl () const
$method=|QUrl|originalUrl|

$prototype=void setUserData ( const QVariant & userData )
$method=|void|setUserData|const QVariant &

$prototype=QString title () const
$method=|QString|title|

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=QVariant userData () const
$method=|QVariant|userData|

$extraMethods

#pragma ENDDUMP
