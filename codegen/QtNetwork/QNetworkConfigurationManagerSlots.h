%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|configurationAdded( const QNetworkConfiguration & config )
$signal=|configurationChanged( const QNetworkConfiguration & config )
$signal=|configurationRemoved( const QNetworkConfiguration & config )
$signal=|onlineStateChanged( bool isOnline )
$signal=|updateCompleted()
$endSlotsClass
