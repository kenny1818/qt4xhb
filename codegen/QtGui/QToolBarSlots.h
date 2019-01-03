%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

#include <QAction>

$beginSlotsClass
$signal=|actionTriggered( QAction * action )
$signal=|allowedAreasChanged( Qt::ToolBarAreas allowedAreas )
$signal=|iconSizeChanged( const QSize & iconSize )
$signal=|movableChanged( bool movable )
$signal=|orientationChanged( Qt::Orientation orientation )
$signal=|toolButtonStyleChanged( Qt::ToolButtonStyle toolButtonStyle )
$signal=|topLevelChanged( bool topLevel )
$signal=|visibilityChanged( bool visible )
$endSlotsClass
