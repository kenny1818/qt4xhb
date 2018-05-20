%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD classBegin
   METHOD componentComplete

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual void classBegin () = 0
$virtualMethod=|void|classBegin|

$prototype=virtual void componentComplete () = 0
$virtualMethod=|void|componentComplete|

$extraMethods

#pragma ENDDUMP
