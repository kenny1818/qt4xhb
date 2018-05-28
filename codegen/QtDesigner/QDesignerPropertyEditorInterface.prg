%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

   METHOD delete
   METHOD core
   METHOD currentPropertyName
   METHOD isReadOnly
   METHOD object
   METHOD setObject
   METHOD setPropertyValue
   METHOD setReadOnly

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDesignerFormEditorInterface>

$deleteMethod

$prototype=virtual QDesignerFormEditorInterface * core () const
$virtualMethod=|QDesignerFormEditorInterface *|core|

$prototype=virtual QString currentPropertyName () const = 0
$virtualMethod=|QString|currentPropertyName|

$prototype=virtual bool isReadOnly () const = 0
$virtualMethod=|bool|isReadOnly|

$prototype=virtual QObject * object () const = 0
$virtualMethod=|QObject *|object|

$prototype=virtual void setObject ( QObject * object ) = 0
$virtualMethod=|void|setObject|QObject *

$prototype=virtual void setPropertyValue ( const QString & name, const QVariant & value, bool changed = true ) = 0
$virtualMethod=|void|setPropertyValue|const QString &,const QVariant &,bool=true

$prototype=virtual void setReadOnly ( bool readOnly ) = 0
$virtualMethod=|void|setReadOnly|bool

$beginSignals
$signal=|propertyChanged(QString,QVariant)
$endSignals

#pragma ENDDUMP
