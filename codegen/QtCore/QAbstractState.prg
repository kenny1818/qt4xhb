%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTATEMACHINE
REQUEST QSTATE
#endif

CLASS QAbstractState INHERIT QObject

   METHOD delete
   METHOD machine
   METHOD parentState

   METHOD onEntered
   METHOD onExited

   DESTRUCTOR destroyObject

END CLASS

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

$connectSignalFunction

$signalMethod=|entered()
$signalMethod=|exited()

#pragma ENDDUMP
