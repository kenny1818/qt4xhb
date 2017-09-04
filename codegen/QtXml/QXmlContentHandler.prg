$header

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
    RBOOL( obj->characters ( PQSTRING(1) ) );
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
    RBOOL( obj->endDocument () );
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
    RBOOL( obj->endElement ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
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
    RBOOL( obj->endPrefixMapping ( PQSTRING(1) ) );
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
    RQSTRING( obj->errorString () );
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
    RBOOL( obj->ignorableWhitespace ( PQSTRING(1) ) );
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
    RBOOL( obj->processingInstruction ( PQSTRING(1), PQSTRING(2) ) );
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
    RBOOL( obj->skippedEntity ( PQSTRING(1) ) );
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
    RBOOL( obj->startDocument () );
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
    RBOOL( obj->startElement ( PQSTRING(1), PQSTRING(2), PQSTRING(3), *PQXMLATTRIBUTES(4) ) );
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
    RBOOL( obj->startPrefixMapping ( PQSTRING(1), PQSTRING(2) ) );
  }
}

$extraMethods

#pragma ENDDUMP
