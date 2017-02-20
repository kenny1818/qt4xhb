/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSTRINGREF

CLASS QXmlStreamNotationDeclaration

   DATA pointer
   DATA class_id INIT Class_Id_QXmlStreamNotationDeclaration
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD publicId
   METHOD systemId
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlStreamNotationDeclaration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlStreamNotationDeclaration>

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
QXmlStreamNotationDeclaration()
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEW1 )
{
  QXmlStreamNotationDeclaration * o = NULL;
  o = new QXmlStreamNotationDeclaration (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamNotationDeclaration *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlStreamNotationDeclaration(const QXmlStreamNotationDeclaration & other)
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEW2 )
{
  QXmlStreamNotationDeclaration * o = NULL;
  QXmlStreamNotationDeclaration * par1 = (QXmlStreamNotationDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlStreamNotationDeclaration ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamNotationDeclaration *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QXmlStreamNotationDeclaration()
//[2]QXmlStreamNotationDeclaration(const QXmlStreamNotationDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNOTATIONDECLARATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMNOTATIONDECLARATION(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNOTATIONDECLARATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_DELETE )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QStringRef name() const
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NAME )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef publicId() const
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_PUBLICID )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->publicId (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef systemId() const
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_SYSTEMID )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->systemId (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEWFROM )
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

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSTREAMNOTATIONDECLARATION_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSTREAMNOTATIONDECLARATION_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_SETSELFDESTRUCTION )
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
