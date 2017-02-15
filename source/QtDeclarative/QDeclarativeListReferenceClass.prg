/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QOBJECT
REQUEST QMETAOBJECT

CLASS QDeclarativeListReference

   DATA pointer
   DATA class_id INIT Class_Id_QDeclarativeListReference
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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

METHOD newFrom (p) CLASS QDeclarativeListReference
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDeclarativeListReference
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDeclarativeListReference
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDeclarativeListReference
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDeclarativeListReference
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDeclarativeListReference
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDeclarativeListReference>

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

/*
QDeclarativeListReference ()
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW1 )
{
  QDeclarativeListReference * o = NULL;
  o = new QDeclarativeListReference (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeListReference *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW2 )
{
  QDeclarativeListReference * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const char * par2 = hb_parc(2);
  QDeclarativeEngine * par3 = ISNIL(3)? 0 : (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeListReference ( par1,  (const char *) par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeListReference *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDeclarativeListReference ()
//[2]QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQDECLARATIVEENGINE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
bool append ( QObject * object ) const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_APPEND )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->append ( par1 ) );
  }
}


/*
QObject * at ( int index ) const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_AT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QObject * ptr = obj->at ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
bool canAppend () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANAPPEND )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canAppend (  ) );
  }
}


/*
bool canAt () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANAT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canAt (  ) );
  }
}


/*
bool canClear () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANCLEAR )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canClear (  ) );
  }
}


/*
bool canCount () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANCOUNT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canCount (  ) );
  }
}


/*
bool clear () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CLEAR )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->clear (  ) );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_COUNT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_ISVALID )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
const QMetaObject * listElementType () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_LISTELEMENTTYPE )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->listElementType (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
QObject * object () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_OBJECT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->object (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}





#pragma ENDDUMP
