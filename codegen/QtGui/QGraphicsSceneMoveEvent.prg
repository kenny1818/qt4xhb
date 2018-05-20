%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

$beginClassFrom=QGraphicsSceneEvent

   METHOD new
   METHOD delete
   METHOD newPos
   METHOD oldPos

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsSceneMoveEvent ()
$constructor=|new|

$deleteMethod

$prototype=QPointF newPos () const
$method=|QPointF|newPos|

$prototype=QPointF oldPos () const
$method=|QPointF|oldPos|

#pragma ENDDUMP
