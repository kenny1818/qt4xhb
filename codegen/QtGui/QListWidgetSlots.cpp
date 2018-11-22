%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$slot=|currentItemChanged( QListWidgetItem * current, QListWidgetItem * previous )
$slot=|currentRowChanged( int currentRow )
$slot=|currentTextChanged( const QString & currentText )
$slot=|itemActivated( QListWidgetItem * item )
$slot=|itemChanged( QListWidgetItem * item )
$slot=|itemClicked( QListWidgetItem * item )
$slot=|itemDoubleClicked( QListWidgetItem * item )
$slot=|itemEntered( QListWidgetItem * item )
$slot=|itemPressed( QListWidgetItem * item )
$slot=|itemSelectionChanged()
$endSlotsClass
