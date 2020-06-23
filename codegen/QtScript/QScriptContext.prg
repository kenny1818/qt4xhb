%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtScript/QScriptEngine>

$deleteMethod

$prototypeV2=QScriptValue activationObject() const

$prototypeV2=QScriptValue argument( int index ) const

$prototypeV2=int argumentCount() const

$prototypeV2=QScriptValue argumentsObject() const

$prototypeV2=QStringList backtrace() const

$prototypeV2=QScriptValue callee() const

$prototypeV2=QScriptEngine * engine() const

$prototypeV2=bool isCalledAsConstructor() const

$prototypeV2=QScriptContext * parentContext() const

$prototypeV2=void setActivationObject( const QScriptValue & activation )

$prototypeV2=void setThisObject( const QScriptValue & thisObject )

$prototypeV2=QScriptContext::ExecutionState state() const

$prototypeV2=QScriptValue thisObject() const

$prototype=QScriptValue throwError ( Error error, const QString & text )
$internalMethod=|QScriptValue|throwError,throwError1|QScriptContext::Error,const QString &

$prototype=QScriptValue throwError ( const QString & text )
$internalMethod=|QScriptValue|throwError,throwError2|const QString &

/*
[1]QScriptValue throwError ( Error error, const QString & text )
[2]QScriptValue throwError ( const QString & text )
*/

HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWERROR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QScriptContext_throwError1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QScriptContext_throwError2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=throwError

$prototypeV2=QScriptValue throwValue( const QScriptValue & value )

$prototypeV2=QString toString() const

$extraMethods

#pragma ENDDUMP
