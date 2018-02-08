%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void connected();
$signal=|void disconnected();
$signal=|void error( QLocalSocket::LocalSocketError socketError );
$signal=|void stateChanged( QLocalSocket::LocalSocketState socketState );
$endSlotsClass
