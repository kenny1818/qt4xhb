%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD flags
   METHOD hasNext
   METHOD hasPrevious
   METHOD name
   METHOD next
   METHOD previous
   METHOD remove
   METHOD scriptName
   METHOD setValue
   METHOD toBack
   METHOD toFront
   METHOD value

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScriptString>

$prototype=QScriptValueIterator ( const QScriptValue & object )
$constructor=|new|const QScriptValue &

$deleteMethod

$prototype=QScriptValue::PropertyFlags flags () const
$method=|QScriptValue::PropertyFlags|flags|

$prototype=bool hasNext () const
$method=|bool|hasNext|

$prototype=bool hasPrevious () const
$method=|bool|hasPrevious|

$prototype=QString name () const
$method=|QString|name|

$prototype=void next ()
$method=|void|next|

$prototype=void previous ()
$method=|void|previous|

$prototype=void remove ()
$method=|void|remove|

$prototype=QScriptString scriptName () const
$method=|QScriptString|scriptName|

$prototype=void setValue ( const QScriptValue & value )
$method=|void|setValue|const QScriptValue &

$prototype=void toBack ()
$method=|void|toBack|

$prototype=void toFront ()
$method=|void|toFront|

$prototype=QScriptValue value () const
$method=|QScriptValue|value|

$extraMethods

#pragma ENDDUMP
