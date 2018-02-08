%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|closed()
$slot=|error( QNetworkSession::SessionError error )
$slot=|newConfigurationActivated()
$slot=|opened()
$slot=|preferredConfigurationChanged( const QNetworkConfiguration & config, bool isSeamless )
$slot=|stateChanged( QNetworkSession::State state )
$endSlotsClass

$signalMethod=|closed()
$signalMethod=|error(QNetworkSession::SessionError)
$signalMethod=|newConfigurationActivated()
$signalMethod=|opened()
$signalMethod=|preferredConfigurationChanged(QNetworkConfiguration,bool)
$signalMethod=|stateChanged(QNetworkSession::State)
