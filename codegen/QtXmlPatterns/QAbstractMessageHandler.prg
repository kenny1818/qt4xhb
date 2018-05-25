%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD delete
   METHOD message

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void message ( QtMsgType type, const QString & description, const QUrl & identifier = QUrl(), const QSourceLocation & sourceLocation = QSourceLocation() )
$method=|void|message|QtMsgType,const QString &,const QUrl &=QUrl(),const QSourceLocation &=QSourceLocation()

#pragma ENDDUMP
