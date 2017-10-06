$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QVARIANT
REQUEST QOBJECT
#endif

CLASS QDeclarativeExpression INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD clearError
   METHOD context
   METHOD engine
   METHOD error
   METHOD evaluate
   METHOD expression
   METHOD hasError
   METHOD lineNumber
   METHOD notifyOnValueChanged
   METHOD scopeObject
   METHOD setExpression
   METHOD setNotifyOnValueChanged
   METHOD setSourceLocation
   METHOD sourceFile

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeExpression>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDeclarativeContext>
#include <QDeclarativeEngine>

/*
QDeclarativeExpression ()
*/
$constructor=|new1|

/*
QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )
*/
$constructor=|new2|QDeclarativeContext *,QObject *,const QString &,QObject *=0

//[1]QDeclarativeExpression ()
//[2]QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVEEXPRESSION_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISQDECLARATIVECONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDECLARATIVEEXPRESSION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void clearError ()
*/
$method=|void|clearError|

/*
QDeclarativeContext * context () const
*/
$method=|QDeclarativeContext *|context|

/*
QDeclarativeEngine * engine () const
*/
$method=|QDeclarativeEngine *|engine|

/*
QDeclarativeError error () const
*/
$method=|QDeclarativeError|error|

/*
QVariant evaluate ( bool * valueIsUndefined = 0 )
*/
$method=|QVariant|evaluate|bool *=0

/*
QString expression () const
*/
$method=|QString|expression|

/*
bool hasError () const
*/
$method=|bool|hasError|

/*
int lineNumber () const
*/
$method=|int|lineNumber|

/*
bool notifyOnValueChanged () const
*/
$method=|bool|notifyOnValueChanged|

/*
QObject * scopeObject () const
*/
$method=|QObject *|scopeObject|

/*
void setExpression ( const QString & expression )
*/
$method=|void|setExpression|const QString &

/*
void setNotifyOnValueChanged ( bool notifyOnChange )
*/
$method=|void|setNotifyOnValueChanged|bool

/*
void setSourceLocation ( const QString & url, int line )
*/
$method=|void|setSourceLocation|const QString &,int

/*
QString sourceFile () const
*/
$method=|QString|sourceFile|

#pragma ENDDUMP
