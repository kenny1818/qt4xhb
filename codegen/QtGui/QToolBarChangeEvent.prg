%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QToolBarChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD toggle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QToolBarChangeEvent(bool t)
$constructor=|new|bool

$deleteMethod

$prototype=bool toggle() const
$method=|bool|toggle|

#pragma ENDDUMP
