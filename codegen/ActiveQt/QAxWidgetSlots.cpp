%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|exception( int code, const QString & source, const QString & desc, const QString & help )
$slot=|propertyChanged( const QString & name )
$slot=|signal( const QString & name, int argc, void * argv )
$endSlotsClass

$signalMethod=|exception(int,QString,QString,QString)
$signalMethod=|propertyChanged(QString)
$signalMethod=|signal(QString,int,void*)
