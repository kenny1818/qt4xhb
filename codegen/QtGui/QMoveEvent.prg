%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMoveEvent ( const QPoint & pos, const QPoint & oldPos )
$constructor=|new|const QPoint &,const QPoint &

$deleteMethod

$prototypeV2=const QPoint & oldPos() const

$prototypeV2=const QPoint & pos() const

#pragma ENDDUMP
