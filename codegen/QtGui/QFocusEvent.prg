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

$prototype=QFocusEvent ( Type type, Qt::FocusReason reason = Qt::OtherFocusReason )
$constructor=|new|QEvent::Type,Qt::FocusReason=Qt::OtherFocusReason

$deleteMethod

$prototypeV2=bool gotFocus() const

$prototypeV2=bool lostFocus() const

$prototypeV2=Qt::FocusReason reason() const

#pragma ENDDUMP
