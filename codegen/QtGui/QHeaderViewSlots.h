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
$signal=|geometriesChanged()
$signal=|sectionAutoResize( int logicalIndex, QHeaderView::ResizeMode mode )
$signal=|sectionClicked( int logicalIndex )
$signal=|sectionCountChanged( int oldCount, int newCount )
$signal=|sectionDoubleClicked( int logicalIndex )
$signal=|sectionEntered( int logicalIndex )
$signal=|sectionHandleDoubleClicked( int logicalIndex )
$signal=|sectionMoved( int logicalIndex, int oldVisualIndex, int newVisualIndex )
$signal=|sectionPressed( int logicalIndex )
$signal=|sectionResized( int logicalIndex, int oldSize, int newSize )
$signal=|sortIndicatorChanged( int logicalIndex, Qt::SortOrder order )
$endSlotsClass
