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
$slot=|currentChanged( const QString & path )
$slot=|directoryEntered( const QString & directory )
$slot=|fileSelected( const QString & file )
$slot=|filesSelected( const QStringList & selected )
$slot=|filterSelected( const QString & filter )
$endSlotsClass
