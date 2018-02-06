%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|blockCountChanged( int newBlockCount )
$slot=|copyAvailable( bool yes )
$slot=|cursorPositionChanged()
$slot=|modificationChanged( bool changed )
$slot=|redoAvailable( bool available )
$slot=|selectionChanged()
$slot=|textChanged()
$slot=|undoAvailable( bool available )
$slot=|updateRequest( const QRect & rect, int dy )
$endSlotsClass

$signalMethod=|blockCountChanged(int)
$signalMethod=|copyAvailable(bool)
$signalMethod=|cursorPositionChanged()
$signalMethod=|modificationChanged(bool)
$signalMethod=|redoAvailable(bool)
$signalMethod=|selectionChanged()
$signalMethod=|textChanged()
$signalMethod=|undoAvailable(bool)
$signalMethod=|updateRequest(QRect,int)
