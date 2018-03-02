%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|activeStackChanged( QUndoStack * stack )
$slot=|canRedoChanged( bool canRedo )
$slot=|canUndoChanged( bool canUndo )
$slot=|cleanChanged( bool clean )
$slot=|indexChanged( int idx )
$slot=|redoTextChanged( const QString & redoText )
$slot=|undoTextChanged( const QString & undoText )
$endSlotsClass

$connectSignalFunction
