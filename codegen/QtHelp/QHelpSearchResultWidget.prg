%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

   METHOD delete
   METHOD linkAt

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QUrl linkAt ( const QPoint & point )
$method=|QUrl|linkAt|const QPoint &

$beginSignals
$signal=|requestShowLink(QUrl)
$endSignals

#pragma ENDDUMP
