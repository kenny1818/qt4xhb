/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QXmlContentHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD characters
   METHOD endDocument
   METHOD endElement
   METHOD endPrefixMapping
   METHOD errorString
   METHOD ignorableWhitespace
   METHOD processingInstruction
   METHOD setDocumentLocator
   METHOD skippedEntity
   METHOD startDocument
   METHOD startElement
   METHOD startPrefixMapping
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlContentHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlContentHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QXMLCONTENTHANDLER_DELETE )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool characters ( const QString & ch ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_CHARACTERS )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->characters ( PQSTRING(1) ) );
  }
}


/*
virtual bool endDocument () = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_ENDDOCUMENT )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->endDocument () );
  }
}


/*
virtual bool endElement ( const QString & namespaceURI, const QString & localName, const QString & qName ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_ENDELEMENT )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->endElement ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool endPrefixMapping ( const QString & prefix ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_ENDPREFIXMAPPING )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->endPrefixMapping ( PQSTRING(1) ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_ERRORSTRING )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual bool ignorableWhitespace ( const QString & ch ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_IGNORABLEWHITESPACE )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->ignorableWhitespace ( PQSTRING(1) ) );
  }
}


/*
virtual bool processingInstruction ( const QString & target, const QString & data ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_PROCESSINGINSTRUCTION )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->processingInstruction ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
virtual void setDocumentLocator ( QXmlLocator * locator ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_SETDOCUMENTLOCATOR )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlLocator * par1 = (QXmlLocator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDocumentLocator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool skippedEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_SKIPPEDENTITY )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->skippedEntity ( PQSTRING(1) ) );
  }
}


/*
virtual bool startDocument () = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_STARTDOCUMENT )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->startDocument () );
  }
}


/*
virtual bool startElement ( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_STARTELEMENT )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlAttributes * par4 = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->startElement ( PQSTRING(1), PQSTRING(2), PQSTRING(3), *par4 ) );
  }
}


/*
virtual bool startPrefixMapping ( const QString & prefix, const QString & uri ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_STARTPREFIXMAPPING )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->startPrefixMapping ( PQSTRING(1), PQSTRING(2) ) );
  }
}


HB_FUNC_STATIC( QXMLCONTENTHANDLER_NEWFROM )
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

HB_FUNC_STATIC( QXMLCONTENTHANDLER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLCONTENTHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLCONTENTHANDLER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLCONTENTHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLCONTENTHANDLER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLCONTENTHANDLER_SETSELFDESTRUCTION )
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
