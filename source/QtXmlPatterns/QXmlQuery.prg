/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QABSTRACTURIRESOLVER
REQUEST QNETWORKACCESSMANAGER
REQUEST QXMLNAME
REQUEST QXMLNAMEPOOL
#endif

CLASS QXmlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bindVariable
   METHOD evaluateTo
   METHOD initialTemplateName
   METHOD isValid
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD queryLanguage
   METHOD setFocus
   METHOD setInitialTemplateName
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setQuery
   METHOD setUriResolver
   METHOD uriResolver

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXmlPatterns/QXmlQuery>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtXmlPatterns/QAbstractMessageHandler>
#include <QtNetwork/QNetworkAccessManager>
#include <QtXmlPatterns/QAbstractUriResolver>

/*
QXmlQuery ()
*/
void QXmlQuery_new1()
{
  QXmlQuery * obj = new QXmlQuery();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QXmlQuery ( const QXmlQuery & other )
*/
void QXmlQuery_new2()
{
  QXmlQuery * obj = new QXmlQuery( *PQXMLQUERY(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QXmlQuery ( const QXmlNamePool & np )
*/
void QXmlQuery_new3()
{
  QXmlQuery * obj = new QXmlQuery( *PQXMLNAMEPOOL(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QXmlQuery ( QueryLanguage,QXmlNamePool & np = QXmlNamePool() )
*/
void QXmlQuery_new4()
{
  QXmlQuery * obj = new QXmlQuery( (QXmlQuery::QueryLanguage) hb_parni(1), ISNIL(2)? QXmlNamePool() : *(QXmlNamePool *) Qt4xHb::itemGetPtr(2) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
[1]QXmlQuery ()
[2]QXmlQuery ( const QXmlQuery & other )
[3]QXmlQuery ( const QXmlNamePool & np )
[4]QXmlQuery ( QueryLanguage queryLanguage, const QXmlNamePool & np = QXmlNamePool() )
*/

HB_FUNC_STATIC( QXMLQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlQuery_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLQUERY(1) )
  {
    QXmlQuery_new2();
  }
  else if( ISNUMPAR(1) && ISQXMLNAMEPOOL(1) )
  {
    QXmlQuery_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQXMLNAMEPOOL(2)||ISNIL(2)) )
  {
    QXmlQuery_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLQUERY_DELETE )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

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
void bindVariable ( const QXmlName & name, const QXmlItem & value )
*/
void QXmlQuery_bindVariable1()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->bindVariable( *PQXMLNAME(1), *PQXMLITEM(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QXmlName & name, QIODevice * device )
*/
void QXmlQuery_bindVariable2()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->bindVariable( *PQXMLNAME(1), PQIODEVICE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QXmlName & name, const QXmlQuery & query )
*/
void QXmlQuery_bindVariable3()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->bindVariable( *PQXMLNAME(1), *PQXMLQUERY(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QString & localName, const QXmlItem & value )
*/
void QXmlQuery_bindVariable4()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->bindVariable( PQSTRING(1), *PQXMLITEM(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QString & localName, QIODevice * device )
*/
void QXmlQuery_bindVariable5()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->bindVariable( PQSTRING(1), PQIODEVICE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QString & localName, const QXmlQuery & query )
*/
void QXmlQuery_bindVariable6()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->bindVariable( PQSTRING(1), *PQXMLQUERY(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void bindVariable ( const QXmlName & name, const QXmlItem & value )
[2]void bindVariable ( const QXmlName & name, QIODevice * device )
[3]void bindVariable ( const QXmlName & name, const QXmlQuery & query )
[4]void bindVariable ( const QString & localName, const QXmlItem & value )
[5]void bindVariable ( const QString & localName, QIODevice * device )
[6]void bindVariable ( const QString & localName, const QXmlQuery & query )
*/

HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE )
{
  if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLITEM(2) )
  {
    QXmlQuery_bindVariable1();
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQIODEVICE(2) )
  {
    QXmlQuery_bindVariable2();
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLQUERY(2) )
  {
    QXmlQuery_bindVariable3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLITEM(2) )
  {
    QXmlQuery_bindVariable4();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQIODEVICE(2) )
  {
    QXmlQuery_bindVariable5();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLQUERY(2) )
  {
    QXmlQuery_bindVariable6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void evaluateTo ( QXmlResultItems * result ) const
*/
void QXmlQuery_evaluateTo1()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->evaluateTo( PQXMLRESULTITEMS(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool evaluateTo ( QAbstractXmlReceiver * callback ) const
*/
void QXmlQuery_evaluateTo2()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->evaluateTo( PQABSTRACTXMLRECEIVER(1) ) );
  }
}

/*
bool evaluateTo ( QStringList * target ) const
*/

/*
bool evaluateTo ( QString * output ) const
*/

/*
bool evaluateTo ( QIODevice * target ) const
*/
void QXmlQuery_evaluateTo5()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->evaluateTo( PQIODEVICE(1) ) );
  }
}

/*
[1]void evaluateTo ( QXmlResultItems * result ) const
[2]bool evaluateTo ( QAbstractXmlReceiver * callback ) const
[3]bool evaluateTo ( QStringList * target ) const
[4]bool evaluateTo ( QString * output ) const
[5]bool evaluateTo ( QIODevice * target ) const
*/

HB_FUNC_STATIC( QXMLQUERY_EVALUATETO )
{
  if( ISNUMPAR(1) && ISQXMLRESULTITEMS(1) )
  {
    QXmlQuery_evaluateTo1();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTXMLRECEIVER(1) )
  {
    QXmlQuery_evaluateTo2();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlQuery_evaluateTo5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QXmlName initialTemplateName() const
*/
HB_FUNC_STATIC( QXMLQUERY_INITIALTEMPLATENAME )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QXmlName * ptr = new QXmlName( obj->initialTemplateName() );
      Qt4xHb::createReturnClass( ptr, "QXMLNAME", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QXMLQUERY_ISVALID )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAbstractMessageHandler * messageHandler() const
*/
HB_FUNC_STATIC( QXMLQUERY_MESSAGEHANDLER )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractMessageHandler * ptr = obj->messageHandler();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTMESSAGEHANDLER" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QXmlNamePool namePool() const
*/
HB_FUNC_STATIC( QXMLQUERY_NAMEPOOL )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QXmlNamePool * ptr = new QXmlNamePool( obj->namePool() );
      Qt4xHb::createReturnClass( ptr, "QXMLNAMEPOOL", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkAccessManager * networkAccessManager() const
*/
HB_FUNC_STATIC( QXMLQUERY_NETWORKACCESSMANAGER )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkAccessManager * ptr = obj->networkAccessManager();
      Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKACCESSMANAGER" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QXmlQuery::QueryLanguage queryLanguage() const
*/
HB_FUNC_STATIC( QXMLQUERY_QUERYLANGUAGE )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->queryLanguage() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setFocus ( const QXmlItem & item )
*/
void QXmlQuery_setFocus1()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFocus( *PQXMLITEM(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setFocus ( const QUrl & documentURI )
*/
void QXmlQuery_setFocus2()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->setFocus( *PQURL(1) ) );
  }
}

/*
bool setFocus ( QIODevice * document )
*/
void QXmlQuery_setFocus3()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->setFocus( PQIODEVICE(1) ) );
  }
}

/*
bool setFocus ( const QString & focus )
*/
void QXmlQuery_setFocus4()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->setFocus( PQSTRING(1) ) );
  }
}

/*
[1]void setFocus ( const QXmlItem & item )
[2]bool setFocus ( const QUrl & documentURI )
[3]bool setFocus ( QIODevice * document )
[4]bool setFocus ( const QString & focus )
*/

HB_FUNC_STATIC( QXMLQUERY_SETFOCUS )
{
  if( ISNUMPAR(1) && ISQXMLITEM(1) )
  {
    QXmlQuery_setFocus1();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QXmlQuery_setFocus2();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlQuery_setFocus3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlQuery_setFocus4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setInitialTemplateName ( const QXmlName & name )
*/
void QXmlQuery_setInitialTemplateName1()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setInitialTemplateName( *PQXMLNAME(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInitialTemplateName ( const QString & localName )
*/
void QXmlQuery_setInitialTemplateName2()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setInitialTemplateName( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setInitialTemplateName ( const QXmlName & name )
[2]void setInitialTemplateName ( const QString & localName )
*/

HB_FUNC_STATIC( QXMLQUERY_SETINITIALTEMPLATENAME )
{
  if( ISNUMPAR(1) && ISQXMLNAME(1) )
  {
    QXmlQuery_setInitialTemplateName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlQuery_setInitialTemplateName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMessageHandler( QAbstractMessageHandler * aMessageHandler )
*/
HB_FUNC_STATIC( QXMLQUERY_SETMESSAGEHANDLER )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTMESSAGEHANDLER(1) )
    {
#endif
      obj->setMessageHandler( PQABSTRACTMESSAGEHANDLER(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNetworkAccessManager( QNetworkAccessManager * newManager )
*/
HB_FUNC_STATIC( QXMLQUERY_SETNETWORKACCESSMANAGER )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKACCESSMANAGER(1) )
    {
#endif
      obj->setNetworkAccessManager( PQNETWORKACCESSMANAGER(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
*/
void QXmlQuery_setQuery1()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setQuery( PQIODEVICE(1), ISNIL(2)? QUrl() : *(QUrl *) Qt4xHb::itemGetPtr(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
*/
void QXmlQuery_setQuery2()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setQuery( *PQURL(1), ISNIL(2)? QUrl() : *(QUrl *) Qt4xHb::itemGetPtr(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )
*/
void QXmlQuery_setQuery3()
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setQuery( PQSTRING(1), ISNIL(2)? QUrl() : *(QUrl *) Qt4xHb::itemGetPtr(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
[2]void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
[3]void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )
*/

HB_FUNC_STATIC( QXMLQUERY_SETQUERY )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlQuery_setQuery1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlQuery_setQuery2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlQuery_setQuery3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUriResolver( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLQUERY_SETURIRESOLVER )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTURIRESOLVER(1) )
    {
#endif
      obj->setUriResolver( PQABSTRACTURIRESOLVER(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QAbstractUriResolver * uriResolver() const
*/
HB_FUNC_STATIC( QXMLQUERY_URIRESOLVER )
{
  QXmlQuery * obj = (QXmlQuery *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QAbstractUriResolver * ptr = obj->uriResolver();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTURIRESOLVER" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QXMLQUERY_NEWFROM )
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

HB_FUNC_STATIC( QXMLQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QXMLQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QXMLQUERY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLQUERY_SETSELFDESTRUCTION )
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
