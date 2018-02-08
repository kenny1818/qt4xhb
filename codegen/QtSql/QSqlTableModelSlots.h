%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void beforeDelete( int row );
$signal=|void beforeInsert( QSqlRecord & record );
$signal=|void beforeUpdate( int row, QSqlRecord & record );
$signal=|void primeInsert( int row, QSqlRecord & record );
$endSlotsClass
