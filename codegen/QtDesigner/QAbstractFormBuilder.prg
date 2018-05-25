%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD load
   METHOD save
   METHOD setWorkingDirectory
   METHOD workingDirectory

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAbstractFormBuilder ()
$constructor=|new|

$deleteMethod

$prototype=virtual QWidget * load ( QIODevice * device, QWidget * parent = 0 )
$virtualMethod=|QWidget *|load|QIODevice *,QWidget *=0

$prototype=virtual void save ( QIODevice * device, QWidget * widget )
$virtualMethod=|void|save|QIODevice *,QWidget *

$prototype=void setWorkingDirectory ( const QDir & directory )
$method=|void|setWorkingDirectory|const QDir &

$prototype=QDir workingDirectory () const
$method=|QDir|workingDirectory|

$extraMethods

#pragma ENDDUMP
