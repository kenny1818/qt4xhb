%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|aboutToReleaseGpuResources()
$slot=|aboutToUseGpuResources()
$slot=|commitDataRequest( QSessionManager & manager )
$slot=|focusChanged( QWidget * old, QWidget * now )
$slot=|fontDatabaseChanged()
$slot=|lastWindowClosed()
$slot=|saveStateRequest( QSessionManager & manager )
$endSlotsClass

$signalMethod=|aboutToReleaseGpuResources()
$signalMethod=|aboutToUseGpuResources()
$signalMethod=|commitDataRequest(QSessionManager)
$signalMethod=|focusChanged(QWidget*,QWidget*)
$signalMethod=|fontDatabaseChanged()
$signalMethod=|lastWindowClosed()
$signalMethod=|saveStateRequest(QSessionManager)
