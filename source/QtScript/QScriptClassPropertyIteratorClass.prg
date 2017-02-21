/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSCRIPTSTRING
REQUEST QSCRIPTVALUE

CLASS QScriptClassPropertyIterator

   DATA pointer
   DATA class_id INIT Class_Id_QScriptClassPropertyIterator
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD flags
   METHOD hasNext
   METHOD hasPrevious
   METHOD id
   METHOD name
   METHOD next
   METHOD object
   METHOD previous
   METHOD toBack
   METHOD toFront
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptClassPropertyIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QScriptClassPropertyIterator>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QScriptString>

HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_DELETE )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QScriptValue::PropertyFlags flags () const
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_FLAGS )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags (  ) );
  }
}


/*
virtual bool hasNext () const = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_HASNEXT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasNext (  ) );
  }
}


/*
virtual bool hasPrevious () const = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_HASPREVIOUS )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasPrevious (  ) );
  }
}


/*
virtual uint id () const
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_ID )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->id (  ) );
  }
}


/*
virtual QScriptString name () const = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_NAME )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptString * ptr = new QScriptString( obj->name (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTSTRING" );
  }
}


/*
virtual void next () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_NEXT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->next (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptValue object () const
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_OBJECT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->object (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual void previous () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_PREVIOUS )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->previous (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void toBack () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_TOBACK )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toBack (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void toFront () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_TOFRONT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toFront (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_NEWFROM )
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

HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTCLASSPROPERTYITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTCLASSPROPERTYITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_SETSELFDESTRUCTION )
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
