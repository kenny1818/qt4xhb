%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD preferredEditAction
   METHOD taskActions

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>

$deleteMethod

$prototype=virtual QAction * preferredEditAction () const
$virtualMethod=|QAction *|preferredEditAction|

$prototype=virtual QList<QAction *> taskActions () const = 0
$virtualMethod=|QList<QAction *>|taskActions|

$extraMethods

#pragma ENDDUMP
