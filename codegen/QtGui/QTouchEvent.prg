%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QWidget *widget() const
$method=|QWidget *|widget|

$prototype=QTouchEvent::DeviceType deviceType() const
$method=|QTouchEvent::DeviceType|deviceType|

$prototype=Qt::TouchPointStates touchPointStates() const
$method=|Qt::TouchPointStates|touchPointStates|

#pragma ENDDUMP
