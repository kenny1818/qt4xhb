/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QABSTRACTURIRESOLVER
#endif

CLASS QXmlSchema

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD documentUri
   METHOD isValid
   METHOD load
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setUriResolver
   METHOD uriResolver

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlSchema
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlSchema>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QAbstractMessageHandler>
#include <QNetworkAccessManager>
#include <QAbstractUriResolver>

/*
QXmlSchema ()
*/
void QXmlSchema_new1 ()
{
  QXmlSchema * o = new QXmlSchema ();
  _qt4xhb_storePointerAndFlag( o, true );
}

/*
QXmlSchema ( const QXmlSchema & other )
*/
void QXmlSchema_new2 ()
{
  QXmlSchema * o = new QXmlSchema ( *PQXMLSCHEMA(1) );
  _qt4xhb_storePointerAndFlag( o, true );
}

//[1]QXmlSchema ()
//[2]QXmlSchema ( const QXmlSchema & other )

HB_FUNC_STATIC( QXMLSCHEMA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlSchema_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    QXmlSchema_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSCHEMA_DELETE )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QUrl documentUri () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_DOCUMENTURI )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->documentUri () );
      _qt4xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_ISVALID )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool load ( const QUrl & source )
*/
void QXmlSchema_load1 ()
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->load ( *PQURL(1) ) );
  }
}

/*
bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
*/
void QXmlSchema_load2 ()
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->load ( PQIODEVICE(1), ISNIL(2)? QUrl() : *(QUrl *) _qt4xhb_itemGetPtr(2) ) );
  }
}

/*
bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )
*/
void QXmlSchema_load3 ()
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->load ( *PQBYTEARRAY(1), ISNIL(2)? QUrl() : *(QUrl *) _qt4xhb_itemGetPtr(2) ) );
  }
}

//[1]bool load ( const QUrl & source )
//[2]bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
//[3]bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )

HB_FUNC_STATIC( QXMLSCHEMA_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QXmlSchema_load1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlSchema_load2();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlSchema_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractMessageHandler * messageHandler () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_MESSAGEHANDLER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractMessageHandler * ptr = obj->messageHandler ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTMESSAGEHANDLER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QXmlNamePool namePool () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_NAMEPOOL )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXmlNamePool * ptr = new QXmlNamePool( obj->namePool () );
      _qt4xhb_createReturnClass ( ptr, "QXMLNAMEPOOL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_NETWORKACCESSMANAGER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkAccessManager * ptr = obj->networkAccessManager ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKACCESSMANAGER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMessageHandler ( QAbstractMessageHandler * handler )
*/
HB_FUNC_STATIC( QXMLSCHEMA_SETMESSAGEHANDLER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTMESSAGEHANDLER(1) )
    {
      obj->setMessageHandler ( PQABSTRACTMESSAGEHANDLER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNetworkAccessManager ( QNetworkAccessManager * manager )
*/
HB_FUNC_STATIC( QXMLSCHEMA_SETNETWORKACCESSMANAGER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKACCESSMANAGER(1) )
    {
      obj->setNetworkAccessManager ( PQNETWORKACCESSMANAGER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLSCHEMA_SETURIRESOLVER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTURIRESOLVER(1) )
    {
      obj->setUriResolver ( PQABSTRACTURIRESOLVER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QAbstractUriResolver * uriResolver () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_URIRESOLVER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      const QAbstractUriResolver * ptr = obj->uriResolver ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTURIRESOLVER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QXMLSCHEMA_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QXMLSCHEMA_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSCHEMA_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMA_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSCHEMA_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMA_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSCHEMA_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
