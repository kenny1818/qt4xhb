%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|configurationAdded( const QNetworkConfiguration & config )
$slot=|configurationChanged( const QNetworkConfiguration & config )
$slot=|configurationRemoved( const QNetworkConfiguration & config )
$slot=|onlineStateChanged( bool isOnline )
$slot=|updateCompleted()
$endSlotsClass

$signalMethod=|configurationAdded(QNetworkConfiguration)
$signalMethod=|configurationChanged(QNetworkConfiguration)
$signalMethod=|configurationRemoved(QNetworkConfiguration)
$signalMethod=|onlineStateChanged(bool)
$signalMethod=|updateCompleted()
