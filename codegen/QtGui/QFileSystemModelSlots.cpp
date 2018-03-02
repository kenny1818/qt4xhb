%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|directoryLoaded( const QString & path )
$slot=|fileRenamed( const QString & path, const QString & oldName, const QString & newName )
$slot=|rootPathChanged( const QString & newPath )
$endSlotsClass

$connectSignalFunction
