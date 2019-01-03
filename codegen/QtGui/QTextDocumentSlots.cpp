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
$slot=|blockCountChanged( int newBlockCount )
$slot=|contentsChange( int position, int charsRemoved, int charsAdded )
$slot=|contentsChanged()
$slot=|cursorPositionChanged( const QTextCursor & cursor )
$slot=|documentLayoutChanged()
$slot=|modificationChanged( bool changed )
$slot=|redoAvailable( bool available )
$slot=|undoAvailable( bool available )
$slot=|undoCommandAdded()
$endSlotsClass
