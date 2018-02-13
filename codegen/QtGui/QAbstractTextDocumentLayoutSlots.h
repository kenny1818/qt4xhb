%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void documentSizeChanged( const QSizeF & newSize )
$signal=|void pageCountChanged( int newPages )
$signal=|void update( const QRectF & rect = QRectF( 0., 0., 1000000000., 1000000000. ) )
$signal=|void updateBlock( const QTextBlock & block )
$endSlotsClass
