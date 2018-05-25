%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD abortEvaluation
   METHOD agent
   METHOD availableExtensions
   METHOD clearExceptions
   METHOD collectGarbage
   METHOD currentContext
   METHOD defaultPrototype
   METHOD evaluate
   METHOD globalObject
   METHOD hasUncaughtException
   METHOD importExtension
   METHOD importedExtensions
   METHOD installTranslatorFunctions
   METHOD isEvaluating
   METHOD newArray
   METHOD newRegExp
   METHOD newVariant
   METHOD nullValue
   METHOD popContext
   METHOD processEventsInterval
   METHOD pushContext
   METHOD reportAdditionalMemoryCost
   METHOD setAgent
   METHOD setDefaultPrototype
   METHOD setGlobalObject
   METHOD setProcessEventsInterval
   METHOD toObject
   METHOD toStringHandle
   METHOD uncaughtException
   METHOD uncaughtExceptionBacktrace
   METHOD uncaughtExceptionLineNumber
   METHOD undefinedValue
   METHOD checkSyntax

   METHOD onSignalHandlerException

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QScriptEngine ()
$internalConstructor=|new1|

$prototype=QScriptEngine ( QObject * parent )
$internalConstructor=|new2|QObject *

//[1]QScriptEngine ()
//[2]QScriptEngine ( QObject * parent )

HB_FUNC_STATIC( QSCRIPTENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScriptEngine_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QScriptEngine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void abortEvaluation ( const QScriptValue & result = QScriptValue() )
$method=|void|abortEvaluation|const QScriptValue &=QScriptValue()

$prototype=QScriptEngineAgent * agent () const
$method=|QScriptEngineAgent *|agent|

$prototype=QStringList availableExtensions () const
$method=|QStringList|availableExtensions|

$prototype=void clearExceptions ()
$method=|void|clearExceptions|

$prototype=void collectGarbage ()
$method=|void|collectGarbage|

$prototype=QScriptContext * currentContext () const
$method=|QScriptContext *|currentContext|

$prototype=QScriptValue defaultPrototype ( int metaTypeId ) const
$method=|QScriptValue|defaultPrototype|int

$prototype=QScriptValue evaluate ( const QString & program, const QString & fileName = QString(), int lineNumber = 1 )
$internalMethod=|QScriptValue|evaluate,evaluate1|const QString &,const QString &=QString(),int=1

$prototype=QScriptValue evaluate ( const QScriptProgram & program )
$internalMethod=|QScriptValue|evaluate,evaluate2|const QScriptProgram &

//[1]QScriptValue evaluate ( const QString & program, const QString & fileName = QString(), int lineNumber = 1 )
//[2]QScriptValue evaluate ( const QScriptProgram & program )

HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNUM(3)) )
  {
    QScriptEngine_evaluate1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    QScriptEngine_evaluate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QScriptValue globalObject () const
$method=|QScriptValue|globalObject|

$prototype=bool hasUncaughtException () const
$method=|bool|hasUncaughtException|

$prototype=QScriptValue importExtension ( const QString & extension )
$method=|QScriptValue|importExtension|const QString &

$prototype=QStringList importedExtensions () const
$method=|QStringList|importedExtensions|

$prototype=void installTranslatorFunctions ( const QScriptValue & object = QScriptValue() )
$method=|void|installTranslatorFunctions|const QScriptValue &=QScriptValue()

$prototype=bool isEvaluating () const
$method=|bool|isEvaluating|

$prototype=QScriptValue newArray ( uint length = 0 )
$method=|QScriptValue|newArray|uint=0

$prototype=QScriptValue newRegExp ( const QRegExp & regexp )
$internalMethod=|QScriptValue|newRegExp,newRegExp1|const QRegExp &

$prototype=QScriptValue newRegExp ( const QString & pattern, const QString & flags )
$internalMethod=|QScriptValue|newRegExp,newRegExp2|const QString &,const QString &

//[1]QScriptValue newRegExp ( const QRegExp & regexp )
//[2]QScriptValue newRegExp ( const QString & pattern, const QString & flags )

HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QScriptEngine_newRegExp1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QScriptEngine_newRegExp2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QScriptValue newVariant ( const QVariant & value )
$internalMethod=|QScriptValue|newVariant,newVariant1|const QVariant &

$prototype=QScriptValue newVariant ( const QScriptValue & object, const QVariant & value )
$internalMethod=|QScriptValue|newVariant,newVariant2|const QScriptValue &,const QVariant &

//[1]QScriptValue newVariant ( const QVariant & value )
//[2]QScriptValue newVariant ( const QScriptValue & object, const QVariant & value )

HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QScriptEngine_newVariant1();
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQVARIANT(2) )
  {
    QScriptEngine_newVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QScriptValue nullValue ()
$method=|QScriptValue|nullValue|

$prototype=void popContext ()
$method=|void|popContext|

$prototype=int processEventsInterval () const
$method=|int|processEventsInterval|

$prototype=QScriptContext * pushContext ()
$method=|QScriptContext *|pushContext|

$prototype=void reportAdditionalMemoryCost ( int size )
$method=|void|reportAdditionalMemoryCost|int

$prototype=void setAgent ( QScriptEngineAgent * agent )
$method=|void|setAgent|QScriptEngineAgent *

$prototype=void setDefaultPrototype ( int metaTypeId, const QScriptValue & prototype )
$method=|void|setDefaultPrototype|int,const QScriptValue &

$prototype=void setGlobalObject ( const QScriptValue & object )
$method=|void|setGlobalObject|const QScriptValue &

$prototype=void setProcessEventsInterval ( int interval )
$method=|void|setProcessEventsInterval|int

$prototype=QScriptValue toObject ( const QScriptValue & value )
$method=|QScriptValue|toObject|const QScriptValue &

$prototype=QScriptString toStringHandle ( const QString & str )
$method=|QScriptString|toStringHandle|const QString &

$prototype=QScriptValue uncaughtException () const
$method=|QScriptValue|uncaughtException|

$prototype=QStringList uncaughtExceptionBacktrace () const
$method=|QStringList|uncaughtExceptionBacktrace|

$prototype=int uncaughtExceptionLineNumber () const
$method=|int|uncaughtExceptionLineNumber|

$prototype=QScriptValue undefinedValue ()
$method=|QScriptValue|undefinedValue|

$prototype=static QScriptSyntaxCheckResult checkSyntax ( const QString & program )
$staticMethod=|QScriptSyntaxCheckResult|checkSyntax|const QString &

$beginSignals
$signal=|signalHandlerException(QScriptValue)
$endSignals

#pragma ENDDUMP
