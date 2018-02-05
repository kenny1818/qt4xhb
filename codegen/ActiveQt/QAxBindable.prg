%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAXAGGREGATED
#endif

CLASS QAxBindable

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createAggregate
   METHOD readData
   METHOD reportError
   METHOD writeData

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAxBindable>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QAxBindable ()
$constructor=|new|

$deleteMethod

$prototype=virtual QAxAggregated * createAggregate ()
$virtualMethod=|QAxAggregated *|createAggregate|

$prototype=virtual bool readData ( QIODevice * source, const QString & format )
$virtualMethod=|bool|readData|QIODevice *,const QString &

$prototype=void reportError ( int code, const QString & src, const QString & desc, const QString & context = QString() )
$method=|void|reportError|int,const QString &,const QString &,const QString &=QString()

$prototype=virtual bool writeData ( QIODevice * sink )
$virtualMethod=|bool|writeData|QIODevice *

$extraMethods

#pragma ENDDUMP
