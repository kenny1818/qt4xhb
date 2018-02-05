%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QDeclarativeListReference

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD append
   METHOD at
   METHOD canAppend
   METHOD canAt
   METHOD canClear
   METHOD canCount
   METHOD clear
   METHOD count
   METHOD isValid
   METHOD listElementType
   METHOD object

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeListReference>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDeclarativeListReference ()
$internalConstructor=|new1|

$prototype=QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )
$internalConstructor=|new2|QObject *,const char *,QDeclarativeEngine *=0

//[1]QDeclarativeListReference ()
//[2]QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeListReference_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQDECLARATIVEENGINE(3)||ISNIL(3)) )
  {
    QDeclarativeListReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool append ( QObject * object ) const
$method=|bool|append|QObject *

$prototype=QObject * at ( int index ) const
$method=|QObject *|at|int

$prototype=bool canAppend () const
$method=|bool|canAppend|

$prototype=bool canAt () const
$method=|bool|canAt|

$prototype=bool canClear () const
$method=|bool|canClear|

$prototype=bool canCount () const
$method=|bool|canCount|

$prototype=bool clear () const
$method=|bool|clear|

$prototype=int count () const
$method=|int|count|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=const QMetaObject * listElementType () const
$method=|const QMetaObject *|listElementType|

$prototype=QObject * object () const
$method=|QObject *|object|

$extraMethods

#pragma ENDDUMP
