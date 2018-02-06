%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|activated( const QString & text )
$slot=|activated( const QModelIndex & index )
$slot=|highlighted( const QString & text )
$slot=|highlighted( const QModelIndex & index )
$endSlotsClass

$signalMethod=|activated(QString)
$signalMethod=|activated(QModelIndex)
$signalMethod=|highlighted(QString)
$signalMethod=|highlighted(QModelIndex)
