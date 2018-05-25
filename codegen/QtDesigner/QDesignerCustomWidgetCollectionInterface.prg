%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD delete
   METHOD customWidgets

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QList<QDesignerCustomWidgetInterface *> customWidgets () const = 0
$virtualMethod=|QList<QDesignerCustomWidgetInterface *>|customWidgets|

$extraMethods

#pragma ENDDUMP
