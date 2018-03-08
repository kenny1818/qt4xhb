%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|geometriesChanged()
$slot=|sectionAutoResize( int logicalIndex, QHeaderView::ResizeMode mode )
$slot=|sectionClicked( int logicalIndex )
$slot=|sectionCountChanged( int oldCount, int newCount )
$slot=|sectionDoubleClicked( int logicalIndex )
$slot=|sectionEntered( int logicalIndex )
$slot=|sectionHandleDoubleClicked( int logicalIndex )
$slot=|sectionMoved( int logicalIndex, int oldVisualIndex, int newVisualIndex )
$slot=|sectionPressed( int logicalIndex )
$slot=|sectionResized( int logicalIndex, int oldSize, int newSize )
$slot=|sortIndicatorChanged( int logicalIndex, Qt::SortOrder order )
$endSlotsClass
