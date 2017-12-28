$header

#include "hbclass.ch"

CLASS QScriptContextInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD functionEndLineNumber
   METHOD functionMetaIndex
   METHOD functionName
   METHOD functionParameterNames
   METHOD functionStartLineNumber
   METHOD functionType
   METHOD isNull
   METHOD lineNumber
   METHOD scriptId

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptContextInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QScriptContextInfo ( const QScriptContext * context )
$internalConstructor=|new1|const QScriptContext *

$prototype=QScriptContextInfo ( const QScriptContextInfo & other )
$internalConstructor=|new2|const QScriptContextInfo &

$prototype=QScriptContextInfo ()
$internalConstructor=|new3|

//[1]QScriptContextInfo ( const QScriptContext * context )
//[2]QScriptContextInfo ( const QScriptContextInfo & other )
//[3]QScriptContextInfo ()

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQSCRIPTCONTEXT(1) )
  {
    QScriptContextInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTCONTEXTINFO(1) )
  {
    QScriptContextInfo_new2();
  }
  else if( ISNUMPAR(0) )
  {
    QScriptContextInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=int functionEndLineNumber () const
$method=|int|functionEndLineNumber|

$prototype=int functionMetaIndex () const
$method=|int|functionMetaIndex|

$prototype=QString functionName () const
$method=|QString|functionName|

$prototype=QStringList functionParameterNames () const
$method=|QStringList|functionParameterNames|

$prototype=int functionStartLineNumber () const
$method=|int|functionStartLineNumber|

$prototype=FunctionType functionType () const
$method=|QScriptContextInfo::FunctionType|functionType|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=int lineNumber () const
$method=|int|lineNumber|

$prototype=qint64 scriptId () const
$method=|qint64|scriptId|

$extraMethods

#pragma ENDDUMP
