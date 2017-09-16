$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVECONTEXT
#endif

CLASS QDeclarativeContext INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD baseUrl
   METHOD contextObject
   METHOD contextProperty
   METHOD engine
   METHOD isValid
   METHOD parentContext
   METHOD resolvedUrl
   METHOD setBaseUrl
   METHOD setContextObject
   METHOD setContextProperty1
   METHOD setContextProperty2
   METHOD setContextProperty

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeContext>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDeclarativeEngine>

/*
QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = 0 )
*/
$constructor=|new1|QDeclarativeEngine *,QObject *=0

/*
QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = 0 )
*/
$constructor=|new2|QDeclarativeContext *,QObject *=0

//[1]QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = 0 )
//[2]QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVECONTEXT_NEW )
{
  if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECONTEXT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQDECLARATIVECONTEXT(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECONTEXT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QUrl baseUrl () const
*/
$method=|QUrl|baseUrl|

/*
QObject * contextObject () const
*/
$method=|QObject *|contextObject|

/*
QVariant contextProperty ( const QString & name ) const
*/
$method=|QVariant|contextProperty|const QString &

/*
QDeclarativeEngine * engine () const
*/
$method=|QDeclarativeEngine *|engine|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QDeclarativeContext * parentContext () const
*/
$method=|QDeclarativeContext *|parentContext|

/*
QUrl resolvedUrl ( const QUrl & src )
*/
$method=|QUrl|resolvedUrl|const QUrl &

/*
void setBaseUrl ( const QUrl & baseUrl )
*/
$method=|void|setBaseUrl|const QUrl &

/*
void setContextObject ( QObject * object )
*/
$method=|void|setContextObject|QObject *

/*
void setContextProperty ( const QString & name, QObject * value )
*/
$method=|void|setContextProperty,setContextProperty1|const QString &,QObject *

/*
void setContextProperty ( const QString & name, const QVariant & value )
*/
$method=|void|setContextProperty,setContextProperty2|const QString &,const QVariant &

//[1]void setContextProperty ( const QString & name, QObject * value )
//[2]void setContextProperty ( const QString & name, const QVariant & value )

HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
