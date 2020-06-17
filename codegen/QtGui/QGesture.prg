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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGesture ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=QGesture::GestureCancelPolicy gestureCancelPolicy() const

$prototypeV2=Qt::GestureType gestureType() const

$prototypeV2=bool hasHotSpot() const

$prototypeV2=QPointF hotSpot() const

$prototype=void setGestureCancelPolicy ( GestureCancelPolicy policy )
$method=|void|setGestureCancelPolicy|QGesture::GestureCancelPolicy

$prototype=void setHotSpot ( const QPointF & value )
$method=|void|setHotSpot|const QPointF &

$prototypeV2=Qt::GestureState state() const

$prototypeV2=void unsetHotSpot()

#pragma ENDDUMP
