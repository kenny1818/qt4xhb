%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

$beginClassFrom=QAbstractItemModel

   METHOD delete
   METHOD dropMimeData
   METHOD index

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
$virtualMethod=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

#pragma ENDDUMP
