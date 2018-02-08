%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|documentSizeChanged( const QSizeF & newSize )
$slot=|pageCountChanged( int newPages )
$slot=|update( const QRectF & rect )
$slot=|updateBlock( const QTextBlock & block )
$endSlotsClass

$signalMethod=|documentSizeChanged(QSizeF)
$signalMethod=|pageCountChanged(int)
$signalMethod=|update(QRectF)
$signalMethod=|updateBlock(QTextBlock)
