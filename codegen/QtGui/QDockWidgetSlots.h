%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$signal=|allowedAreasChanged( Qt::DockWidgetAreas allowedAreas )
$signal=|dockLocationChanged( Qt::DockWidgetArea area )
$signal=|featuresChanged( QDockWidget::DockWidgetFeatures features )
$signal=|topLevelChanged( bool topLevel )
$signal=|visibilityChanged( bool visible )
$endSlotsClass
