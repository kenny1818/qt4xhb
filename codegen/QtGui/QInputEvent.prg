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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QInputEvent(Type type, Qt::KeyboardModifiers modifiers = Qt::NoModifier)
$constructor=|new|QEvent::Type,Qt::KeyboardModifiers=Qt::NoModifier

$deleteMethod

$prototype=Qt::KeyboardModifiers modifiers() const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=void setModifiers(Qt::KeyboardModifiers amodifiers)
$method=|void|setModifiers|Qt::KeyboardModifiers

#pragma ENDDUMP
