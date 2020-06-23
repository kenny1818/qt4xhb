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

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSizeGrip ( QWidget * parent )
$constructor=|new|QWidget *

$deleteMethod

$prototypeV2=virtual void setVisible( bool visible )

$prototypeV2=virtual QSize sizeHint() const

#pragma ENDDUMP
