/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QMetaType

   DATA pointer
   DATA class_id INIT Class_Id_QMetaType
   DATA self_destruction INIT .f.

   METHOD registerTypedef
   METHOD type
   METHOD typeName
   METHOD isRegistered
   METHOD construct
   METHOD destroy
   METHOD unregisterType
   METHOD save
   METHOD load
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaType
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMetaType>

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
static int registerTypedef(const char *typeName, int aliasId)
*/
HB_FUNC_STATIC( QMETATYPE_REGISTERTYPEDEF )
{
  const char * par1 = hb_parc(1);
  hb_retni( QMetaType::registerTypedef (  (const char *) par1, hb_parni(2) ) );
}


/*
static int type(const char *typeName)
*/
HB_FUNC_STATIC( QMETATYPE_TYPE )
{
  const char * par1 = hb_parc(1);
  hb_retni( QMetaType::type (  (const char *) par1 ) );
}


/*
static const char *typeName(int type)
*/
HB_FUNC_STATIC( QMETATYPE_TYPENAME )
{
  const char * str1 = QMetaType::typeName ( hb_parni(1) );
  hb_retc( str1 );
}


/*
static bool isRegistered(int type)
*/
HB_FUNC_STATIC( QMETATYPE_ISREGISTERED )
{
  hb_retl( QMetaType::isRegistered ( hb_parni(1) ) );
}


/*
static void *construct(int type, const void *copy = 0)
*/
HB_FUNC_STATIC( QMETATYPE_CONSTRUCT )
{
  const void * par2 = ISNIL(2)? 0 : (const void *) hb_parptr(2);
  void * retptr = QMetaType::construct ( hb_parni(1), par2 );
  hb_retptr( (void *) retptr );
}


/*
static void destroy(int type, void *data)
*/
HB_FUNC_STATIC( QMETATYPE_DESTROY )
{
  void * par2 = (void *) hb_parptr(2);
  QMetaType::destroy ( hb_parni(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void unregisterType(const char *typeName)
*/
HB_FUNC_STATIC( QMETATYPE_UNREGISTERTYPE )
{
  const char * par1 = hb_parc(1);
  QMetaType::unregisterType (  (const char *) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool save(QDataStream &stream, int type, const void *data)
*/
HB_FUNC_STATIC( QMETATYPE_SAVE )
{
  QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const void * par3 = (const void *) hb_parptr(3);
  hb_retl( QMetaType::save ( *par1, hb_parni(2), par3 ) );
}


/*
static bool load(QDataStream &stream, int type, void *data)
*/
HB_FUNC_STATIC( QMETATYPE_LOAD )
{
  QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  void * par3 = (void *) hb_parptr(3);
  hb_retl( QMetaType::load ( *par1, hb_parni(2), par3 ) );
}


HB_FUNC_STATIC( QMETATYPE_NEWFROM )
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

HB_FUNC_STATIC( QMETATYPE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMETATYPE_NEWFROM );
}

HB_FUNC_STATIC( QMETATYPE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMETATYPE_NEWFROM );
}

HB_FUNC_STATIC( QMETATYPE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMETATYPE_SETSELFDESTRUCTION )
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
