/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QVARIANT
#endif

CLASS QScriptEngineAgent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contextPop
   METHOD contextPush
   METHOD engine
   METHOD exceptionCatch
   METHOD exceptionThrow
   METHOD extension
   METHOD functionEntry
   METHOD functionExit
   METHOD positionChange
   METHOD scriptLoad
   METHOD scriptUnload
   METHOD supportsExtension
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptEngineAgent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QScriptEngineAgent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScriptEngineAgent ( QScriptEngine * engine )
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_NEW )
{
  QScriptEngineAgent * o = new QScriptEngineAgent ( PQSCRIPTENGINE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_DELETE )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void contextPop ()
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_CONTEXTPOP )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->contextPop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void contextPush ()
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_CONTEXTPUSH )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->contextPush ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScriptEngine * engine () const
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_ENGINE )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngine * ptr = obj->engine ();
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}

/*
virtual void exceptionCatch ( qint64 scriptId, const QScriptValue & exception )
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_EXCEPTIONCATCH )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->exceptionCatch ( PQINT64(1), *PQSCRIPTVALUE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void exceptionThrow ( qint64 scriptId, const QScriptValue & exception, bool hasHandler )
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_EXCEPTIONTHROW )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->exceptionThrow ( PQINT64(1), *PQSCRIPTVALUE(2), PBOOL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QVariant extension ( Extension extension, const QVariant & argument = QVariant() )
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_EXTENSION )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->extension ( (QScriptEngineAgent::Extension) hb_parni(1), par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
virtual void functionEntry ( qint64 scriptId )
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_FUNCTIONENTRY )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->functionEntry ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void functionExit ( qint64 scriptId, const QScriptValue & returnValue )
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_FUNCTIONEXIT )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->functionExit ( PQINT64(1), *PQSCRIPTVALUE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void positionChange ( qint64 scriptId, int lineNumber, int columnNumber )
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_POSITIONCHANGE )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->positionChange ( PQINT64(1), PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void scriptLoad ( qint64 id, const QString & program, const QString & fileName, int baseLineNumber )
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SCRIPTLOAD )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scriptLoad ( PQINT64(1), PQSTRING(2), PQSTRING(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void scriptUnload ( qint64 id )
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SCRIPTUNLOAD )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scriptUnload ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SUPPORTSEXTENSION )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->supportsExtension ( (QScriptEngineAgent::Extension) hb_parni(1) ) );
  }
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTENGINEAGENT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTENGINEAGENT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
