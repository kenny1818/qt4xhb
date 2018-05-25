%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

   METHOD new
   METHOD delete
   METHOD key
   METHOD shortcutId
   METHOD isAmbiguous

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
$constructor=|new|const QKeySequence &,int,bool=false

$deleteMethod

$prototype=const QKeySequence &key()
$method=|const QKeySequence &|key|

$prototype=int shortcutId()
$method=|int|shortcutId|

$prototype=bool isAmbiguous()
$method=|bool|isAmbiguous|

#pragma ENDDUMP
