%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

$beginClass

   METHOD delete
   METHOD count
   METHOD hasReset
   METHOD indexOf
   METHOD isAttribute
   METHOD isChanged
   METHOD isVisible
   METHOD property
   METHOD propertyGroup
   METHOD propertyName
   METHOD reset
   METHOD setAttribute
   METHOD setChanged
   METHOD setProperty
   METHOD setPropertyGroup
   METHOD setVisible

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$deleteMethod

$prototype=virtual int count () const = 0
$virtualMethod=|int|count|

$prototype=virtual bool hasReset ( int index ) const = 0
$virtualMethod=|bool|hasReset|int

$prototype=virtual int indexOf ( const QString & name ) const = 0
$virtualMethod=|int|indexOf|const QString &

$prototype=virtual bool isAttribute ( int index ) const = 0
$virtualMethod=|bool|isAttribute|int

$prototype=virtual bool isChanged ( int index ) const = 0
$virtualMethod=|bool|isChanged|int

$prototype=virtual bool isVisible ( int index ) const = 0
$virtualMethod=|bool|isVisible|int

$prototype=virtual QVariant property ( int index ) const = 0
$virtualMethod=|QVariant|property|int

$prototype=virtual QString propertyGroup ( int index ) const = 0
$virtualMethod=|QString|propertyGroup|int

$prototype=virtual QString propertyName ( int index ) const = 0
$virtualMethod=|QString|propertyName|int

$prototype=virtual bool reset ( int index ) = 0
$virtualMethod=|bool|reset|int

$prototype=virtual void setAttribute ( int index, bool attribute ) = 0
$virtualMethod=|void|setAttribute|int,bool

$prototype=virtual void setChanged ( int index, bool changed ) = 0
$virtualMethod=|void|setChanged|int,bool

$prototype=virtual void setProperty ( int index, const QVariant & value ) = 0
$virtualMethod=|void|setProperty|int,const QVariant &

$prototype=virtual void setPropertyGroup ( int index, const QString & group ) = 0
$virtualMethod=|void|setPropertyGroup|int,const QString &

$prototype=virtual void setVisible ( int index, bool visible ) = 0
$virtualMethod=|void|setVisible|int,bool

$extraMethods

#pragma ENDDUMP
