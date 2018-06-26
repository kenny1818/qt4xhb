%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleHintReturn ( int version = QStyleOption::Version, int type = SH_Default )
$constructor=|new|int=QStyleOption::Version,int=QStyleHintReturn::SH_Default

$deleteMethod

$extraMethods

#pragma ENDDUMP
