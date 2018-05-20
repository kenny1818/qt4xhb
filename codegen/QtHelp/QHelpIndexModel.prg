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

$beginClassFrom=QStringListModel

   METHOD createIndex
   METHOD filter
   METHOD isCreatingIndex

   METHOD onIndexCreated
   METHOD onIndexCreationStarted

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=void createIndex ( const QString & customFilterName )
$method=|void|createIndex|const QString &

$prototype=QModelIndex filter ( const QString & filter, const QString & wildcard = QString() )
$method=|QModelIndex|filter|const QString &,const QString &=QString()

$prototype=bool isCreatingIndex () const
$method=|bool|isCreatingIndex|

$beginSignals
$signal=|indexCreated()
$signal=|indexCreationStarted()
$endSignals

#pragma ENDDUMP
