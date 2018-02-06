%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|cursorPositionChanged( int iold, int inew )
$slot=|editingFinished()
$slot=|returnPressed()
$slot=|selectionChanged()
$slot=|textChanged( const QString & text )
$slot=|textEdited( const QString & text )
$endSlotsClass

$signalMethod=|cursorPositionChanged(int,int)
$signalMethod=|editingFinished()
$signalMethod=|returnPressed()
$signalMethod=|selectionChanged()
$signalMethod=|textChanged(QString)
$signalMethod=|textEdited(QString)
