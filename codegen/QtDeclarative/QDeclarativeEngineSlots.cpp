%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|quit()
$slot=|warnings( const QList<QDeclarativeError> & warnings )
$endSlotsClass

$signalMethod=|quit()
$signalMethod=|warnings(QList<QDeclarativeError>)

$connectSignalFunction
