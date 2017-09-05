$header

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

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD documentUri
   METHOD isValid
   METHOD load1
   METHOD load2
   METHOD load3
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

$destructor

#pragma BEGINDUMP

#include <QXmlSchema>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlSchema ()
*/
HB_FUNC_STATIC( QXMLSCHEMA_NEW1 )
{
  QXmlSchema * o = new QXmlSchema ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlSchema ( const QXmlSchema & other )
*/
HB_FUNC_STATIC( QXMLSCHEMA_NEW2 )
{
  QXmlSchema * o = new QXmlSchema ( *PQXMLSCHEMA(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlSchema ()
//[2]QXmlSchema ( const QXmlSchema & other )

HB_FUNC_STATIC( QXMLSCHEMA_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QUrl documentUri () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_DOCUMENTURI )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->documentUri () );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
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
    RBOOL( obj->isValid () );
  }
}


/*
bool load ( const QUrl & source )
*/
HB_FUNC_STATIC( QXMLSCHEMA_LOAD1 )
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
HB_FUNC_STATIC( QXMLSCHEMA_LOAD2 )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->load ( PQIODEVICE(1), par2 ) );
  }
}


/*
bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )
*/
HB_FUNC_STATIC( QXMLSCHEMA_LOAD3 )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->load ( *PQBYTEARRAY(1), par2 ) );
  }
}


//[1]bool load ( const QUrl & source )
//[2]bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
//[3]bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )

HB_FUNC_STATIC( QXMLSCHEMA_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD2 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD3 );
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
    QAbstractMessageHandler * ptr = obj->messageHandler ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTMESSAGEHANDLER" );
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
    QXmlNamePool * ptr = new QXmlNamePool( obj->namePool () );
    _qt4xhb_createReturnClass ( ptr, "QXMLNAMEPOOL", true );
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
    QNetworkAccessManager * ptr = obj->networkAccessManager ();
    _qt4xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
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
    QAbstractMessageHandler * par1 = (QAbstractMessageHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMessageHandler ( par1 );
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
    QNetworkAccessManager * par1 = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setNetworkAccessManager ( par1 );
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
    QAbstractUriResolver * par1 = (QAbstractUriResolver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUriResolver ( par1 );
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
    const QAbstractUriResolver * ptr = obj->uriResolver ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTURIRESOLVER" );
  }
}

$extraMethods

#pragma ENDDUMP
