/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLNAME
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QABSTRACTURIRESOLVER
#endif

CLASS QXmlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD bindVariable1
   METHOD bindVariable2
   METHOD bindVariable3
   METHOD bindVariable4
   METHOD bindVariable5
   METHOD bindVariable6
   METHOD bindVariable
   METHOD evaluateTo1
   METHOD evaluateTo2
   METHOD evaluateTo4
   METHOD evaluateTo5
   METHOD evaluateTo
   METHOD initialTemplateName
   METHOD isValid
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD queryLanguage
   METHOD setFocus1
   METHOD setFocus2
   METHOD setFocus3
   METHOD setFocus4
   METHOD setFocus
   METHOD setInitialTemplateName1
   METHOD setInitialTemplateName2
   METHOD setInitialTemplateName
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setQuery1
   METHOD setQuery2
   METHOD setQuery3
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

PROCEDURE destroyObject () CLASS QXmlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlQuery>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlQuery ()
*/
HB_FUNC_STATIC( QXMLQUERY_NEW1 )
{
  QXmlQuery * o = new QXmlQuery ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlQuery ( const QXmlQuery & other )
*/
HB_FUNC_STATIC( QXMLQUERY_NEW2 )
{
  QXmlQuery * o = new QXmlQuery ( *PQXMLQUERY(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlQuery ( const QXmlNamePool & np )
*/
HB_FUNC_STATIC( QXMLQUERY_NEW3 )
{
  QXmlQuery * o = new QXmlQuery ( *PQXMLNAMEPOOL(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlQuery ( QueryLanguage,QXmlNamePool & np = QXmlNamePool() )
*/
HB_FUNC_STATIC( QXMLQUERY_NEW4 )
{
  QXmlNamePool par2 = ISNIL(2)? QXmlNamePool() : *(QXmlNamePool *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QXmlQuery * o = new QXmlQuery ( (QXmlQuery::QueryLanguage) hb_parni(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlQuery ()
//[2]QXmlQuery ( const QXmlQuery & other )
//[3]QXmlQuery ( const QXmlNamePool & np )
//[4]QXmlQuery ( QueryLanguage queryLanguage, const QXmlNamePool & np = QXmlNamePool() )

HB_FUNC_STATIC( QXMLQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLQUERY(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQXMLNAMEPOOL(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQXMLNAMEPOOL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLQUERY_DELETE )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE1 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->bindVariable ( *par1, *PQXMLITEM(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void bindVariable ( const QXmlName & name, QIODevice * device )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE2 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->bindVariable ( *par1, PQIODEVICE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void bindVariable ( const QXmlName & name, const QXmlQuery & query )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE3 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QXmlQuery * par2 = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->bindVariable ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void bindVariable ( const QString & localName, const QXmlItem & value )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE4 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->bindVariable ( PQSTRING(1), *PQXMLITEM(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void bindVariable ( const QString & localName, QIODevice * device )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE5 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->bindVariable ( PQSTRING(1), PQIODEVICE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void bindVariable ( const QString & localName, const QXmlQuery & query )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE6 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlQuery * par2 = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->bindVariable ( PQSTRING(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void bindVariable ( const QXmlName & name, const QXmlItem & value )
//[2]void bindVariable ( const QXmlName & name, QIODevice * device )
//[3]void bindVariable ( const QXmlName & name, const QXmlQuery & query )
//[4]void bindVariable ( const QString & localName, const QXmlItem & value )
//[5]void bindVariable ( const QString & localName, QIODevice * device )
//[6]void bindVariable ( const QString & localName, const QXmlQuery & query )

HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE )
{
  if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLITEM(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE1 );
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE2 );
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLQUERY(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLITEM(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE4 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE5 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLQUERY(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE6 );
  }
}

/*
void evaluateTo ( QXmlResultItems * result ) const
*/
HB_FUNC_STATIC( QXMLQUERY_EVALUATETO1 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlResultItems * par1 = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->evaluateTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool evaluateTo ( QAbstractXmlReceiver * callback ) const
*/
HB_FUNC_STATIC( QXMLQUERY_EVALUATETO2 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractXmlReceiver * par1 = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->evaluateTo ( par1 ) );
  }
}



/*
bool evaluateTo ( QString * output ) const
*/
HB_FUNC_STATIC( QXMLQUERY_EVALUATETO4 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString * par1 = NULL;
    RBOOL( obj->evaluateTo ( par1 ) );
  }
}


/*
bool evaluateTo ( QIODevice * target ) const
*/
HB_FUNC_STATIC( QXMLQUERY_EVALUATETO5 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->evaluateTo ( PQIODEVICE(1) ) );
  }
}


//[1]void evaluateTo ( QXmlResultItems * result ) const
//[2]bool evaluateTo ( QAbstractXmlReceiver * callback ) const
//[3]bool evaluateTo ( QStringList * target ) const
//[4]bool evaluateTo ( QString * output ) const
//[5]bool evaluateTo ( QIODevice * target ) const

HB_FUNC_STATIC( QXMLQUERY_EVALUATETO )
{
  if( ISNUMPAR(1) && ISQXMLRESULTITEMS(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO1 );
  }
  else if( ISNUMPAR(1) && ISQABSTRACTXMLRECEIVER(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO2 );
  }
  //else if( ISNUMPAR(1) && ISARRAY(1) )
  //{
  //  HB_FUNC_EXEC( QXMLQUERY_EVALUATETO3 );
  //}
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO4 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO5 );
  }
}

/*
QXmlName initialTemplateName () const
*/
HB_FUNC_STATIC( QXMLQUERY_INITIALTEMPLATENAME )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * ptr = new QXmlName( obj->initialTemplateName () );
    _qt4xhb_createReturnClass ( ptr, "QXMLNAME", true );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QXMLQUERY_ISVALID )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QAbstractMessageHandler * messageHandler () const
*/
HB_FUNC_STATIC( QXMLQUERY_MESSAGEHANDLER )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractMessageHandler * ptr = obj->messageHandler ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTMESSAGEHANDLER" );
  }
}


/*
QXmlNamePool namePool () const
*/
HB_FUNC_STATIC( QXMLQUERY_NAMEPOOL )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNamePool * ptr = new QXmlNamePool( obj->namePool () );
    _qt4xhb_createReturnClass ( ptr, "QXMLNAMEPOOL", true );
  }
}


/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QXMLQUERY_NETWORKACCESSMANAGER )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager ();
    _qt4xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
QueryLanguage queryLanguage () const
*/
HB_FUNC_STATIC( QXMLQUERY_QUERYLANGUAGE )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->queryLanguage () );
  }
}


/*
void setFocus ( const QXmlItem & item )
*/
HB_FUNC_STATIC( QXMLQUERY_SETFOCUS1 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocus ( *PQXMLITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setFocus ( const QUrl & documentURI )
*/
HB_FUNC_STATIC( QXMLQUERY_SETFOCUS2 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setFocus ( *PQURL(1) ) );
  }
}


/*
bool setFocus ( QIODevice * document )
*/
HB_FUNC_STATIC( QXMLQUERY_SETFOCUS3 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setFocus ( PQIODEVICE(1) ) );
  }
}


/*
bool setFocus ( const QString & focus )
*/
HB_FUNC_STATIC( QXMLQUERY_SETFOCUS4 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setFocus ( PQSTRING(1) ) );
  }
}


//[1]void setFocus ( const QXmlItem & item )
//[2]bool setFocus ( const QUrl & documentURI )
//[3]bool setFocus ( QIODevice * document )
//[4]bool setFocus ( const QString & focus )

HB_FUNC_STATIC( QXMLQUERY_SETFOCUS )
{
  if( ISNUMPAR(1) && ISQXMLITEM(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS2 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS4 );
  }
}

/*
void setInitialTemplateName ( const QXmlName & name )
*/
HB_FUNC_STATIC( QXMLQUERY_SETINITIALTEMPLATENAME1 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setInitialTemplateName ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInitialTemplateName ( const QString & localName )
*/
HB_FUNC_STATIC( QXMLQUERY_SETINITIALTEMPLATENAME2 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setInitialTemplateName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setInitialTemplateName ( const QXmlName & name )
//[2]void setInitialTemplateName ( const QString & localName )

HB_FUNC_STATIC( QXMLQUERY_SETINITIALTEMPLATENAME )
{
  if( ISNUMPAR(1) && ISQXMLNAME(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETINITIALTEMPLATENAME1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETINITIALTEMPLATENAME2 );
  }
}

/*
void setMessageHandler ( QAbstractMessageHandler * aMessageHandler )
*/
HB_FUNC_STATIC( QXMLQUERY_SETMESSAGEHANDLER )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractMessageHandler * par1 = (QAbstractMessageHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMessageHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessManager ( QNetworkAccessManager * newManager )
*/
HB_FUNC_STATIC( QXMLQUERY_SETNETWORKACCESSMANAGER )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * par1 = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setNetworkAccessManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
*/
HB_FUNC_STATIC( QXMLQUERY_SETQUERY1 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setQuery ( PQIODEVICE(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
*/
HB_FUNC_STATIC( QXMLQUERY_SETQUERY2 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setQuery ( *PQURL(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )
*/
HB_FUNC_STATIC( QXMLQUERY_SETQUERY3 )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setQuery ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
//[2]void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
//[3]void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )

HB_FUNC_STATIC( QXMLQUERY_SETQUERY )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETQUERY1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETQUERY2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETQUERY3 );
  }
}

/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLQUERY_SETURIRESOLVER )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAbstractUriResolver * par1 = (const QAbstractUriResolver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUriResolver ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QAbstractUriResolver * uriResolver () const
*/
HB_FUNC_STATIC( QXMLQUERY_URIRESOLVER )
{
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAbstractUriResolver * ptr = obj->uriResolver ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTURIRESOLVER" );
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

  hb_itemReturn( self );
}



#pragma ENDDUMP
