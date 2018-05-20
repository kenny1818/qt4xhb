%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPSEARCHQUERY
#endif

$beginClassFrom=QWidget

   METHOD new
   METHOD delete
   METHOD query

   METHOD onSearch

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHelpSearchQueryWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QList<QHelpSearchQuery> query () const
$method=|QList<QHelpSearchQuery>|query|

$beginSignals
$signal=|search()
$endSignals

#pragma ENDDUMP
