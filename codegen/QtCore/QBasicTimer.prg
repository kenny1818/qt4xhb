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
   METHOD isActive
   METHOD start
   METHOD stop
   METHOD timerId

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBasicTimer ()
$constructor=|new|

$deleteMethod

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=void start ( int msec, QObject * object )
$method=|void|start|int,QObject *

$prototype=void stop ()
$method=|void|stop|

$prototype=int timerId () const
$method=|int|timerId|

$extraMethods

#pragma ENDDUMP
