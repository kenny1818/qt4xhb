%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$slot=|error( QImageReader::ImageReaderError error )
$slot=|finished()
$slot=|frameChanged( int frameNumber )
$slot=|resized( const QSize & size )
$slot=|started()
$slot=|stateChanged( QMovie::MovieState state )
$slot=|updated( const QRect & rect )
$endSlotsClass
