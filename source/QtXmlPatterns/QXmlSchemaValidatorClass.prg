/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QXMLSCHEMA
REQUEST QABSTRACTURIRESOLVER

CLASS QXmlSchemaValidator

   DATA pointer
   DATA class_id INIT Class_Id_QXmlSchemaValidator
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD schema
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setSchema
   METHOD setUriResolver
   METHOD uriResolver
   METHOD validate1
   METHOD validate2
   METHOD validate3
   METHOD validate
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlSchemaValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlSchemaValidator>

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

#include <QXmlSchema>

/*
QXmlSchemaValidator ()
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW1 )
{
  QXmlSchemaValidator * o = NULL;
  o = new QXmlSchemaValidator (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlSchemaValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlSchemaValidator ( const QXmlSchema & schema )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW2 )
{
  QXmlSchemaValidator * o = NULL;
  QXmlSchema * par1 = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlSchemaValidator ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlSchemaValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QXmlSchemaValidator ()
//[2]QXmlSchemaValidator ( const QXmlSchema & schema )

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_DELETE )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAbstractMessageHandler * messageHandler () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_MESSAGEHANDLER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractMessageHandler * ptr = obj->messageHandler (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTMESSAGEHANDLER" );
  }
}


/*
QXmlNamePool namePool () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NAMEPOOL )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNamePool * ptr = new QXmlNamePool( obj->namePool (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLNAMEPOOL", true );
  }
}


/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NETWORKACCESSMANAGER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager (  );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
QXmlSchema schema () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SCHEMA )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlSchema * ptr = new QXmlSchema( obj->schema (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLSCHEMA", true );
  }
}


/*
void setMessageHandler ( QAbstractMessageHandler * handler )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETMESSAGEHANDLER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractMessageHandler * par1 = (QAbstractMessageHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMessageHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessManager ( QNetworkAccessManager * manager )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETNETWORKACCESSMANAGER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * par1 = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setNetworkAccessManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSchema ( const QXmlSchema & schema )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETSCHEMA )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlSchema * par1 = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSchema ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETURIRESOLVER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractUriResolver * par1 = (QAbstractUriResolver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUriResolver ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QAbstractUriResolver * uriResolver () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_URIRESOLVER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAbstractUriResolver * ptr = obj->uriResolver (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTURIRESOLVER" );
  }
}


/*
bool validate ( const QUrl & source ) const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE1 )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->validate ( *par1 ) );
  }
}


/*
bool validate ( QIODevice * source, const QUrl & documentUri = QUrl() ) const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE2 )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->validate ( par1, par2 ) );
  }
}


/*
bool validate ( const QByteArray & data, const QUrl & documentUri = QUrl() ) const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE3 )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray  * par1 = (QByteArray  *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->validate ( *par1, par2 ) );
  }
}


//[1]bool validate ( const QUrl & source ) const
//[2]bool validate ( QIODevice * source, const QUrl & documentUri = QUrl() ) const
//[3]bool validate ( const QByteArray & data, const QUrl & documentUri = QUrl() ) const

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_VALIDATE1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_VALIDATE2 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_VALIDATE3 );
  }
}


HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEWFROM )
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

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETSELFDESTRUCTION )
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
