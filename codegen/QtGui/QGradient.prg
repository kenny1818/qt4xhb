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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=QGradient::CoordinateMode coordinateMode() const

$prototypeV2=void setColorAt( qreal position, const QColor & color )

$prototypeV2=void setCoordinateMode( QGradient::CoordinateMode mode )

$prototypeV2=void setSpread( QGradient::Spread method )

$prototypeV2=QGradient::Spread spread() const

$prototypeV2=QGradient::Type type() const

$extraMethods

#pragma ENDDUMP
