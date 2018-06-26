%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD error
   METHOD errorString
   METHOD fatalError
   METHOD warning

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool error ( const QXmlParseException & exception ) = 0
$virtualMethod=|bool|error|const QXmlParseException &

$prototype=virtual QString errorString () const = 0
$virtualMethod=|QString|errorString|

$prototype=virtual bool fatalError ( const QXmlParseException & exception ) = 0
$virtualMethod=|bool|fatalError|const QXmlParseException &

$prototype=virtual bool warning ( const QXmlParseException & exception ) = 0
$virtualMethod=|bool|warning|const QXmlParseException &

$extraMethods

#pragma ENDDUMP
