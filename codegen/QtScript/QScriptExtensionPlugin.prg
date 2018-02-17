%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptExtensionPlugin INHERIT QObject

   METHOD delete
   METHOD setupPackage
   METHOD initialize
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QScriptValue>

$deleteMethod

$prototype=QScriptValue setupPackage ( const QString & key, QScriptEngine * engine ) const
$method=|QScriptValue|setupPackage|const QString &,QScriptEngine *

$prototype=virtual void initialize ( const QString & key, QScriptEngine * engine ) = 0
$virtualMethod=|void|initialize|const QString &,QScriptEngine *

$prototype=virtual QStringList keys () const = 0
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
