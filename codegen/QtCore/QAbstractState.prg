%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD delete
   METHOD machine
   METHOD parentState

   METHOD onEntered
   METHOD onExited

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStateMachine>
#include <QState>

$deleteMethod

$prototype=QStateMachine * machine () const
$method=|QStateMachine *|machine|

$prototype=QState * parentState () const
$method=|QState *|parentState|

$beginSignals
$signal=|entered()
$signal=|exited()
$endSignals

#pragma ENDDUMP
