$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLDTDHANDLER
REQUEST QXMLCONTENTHANDLER
REQUEST QXMLDECLHANDLER
REQUEST QXMLENTITYRESOLVER
REQUEST QXMLERRORHANDLER
REQUEST QXMLLEXICALHANDLER
#endif

CLASS QXmlReader

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD DTDHandler
   METHOD contentHandler
   METHOD declHandler
   METHOD entityResolver
   METHOD errorHandler
   METHOD feature
   METHOD hasFeature
   METHOD hasProperty
   METHOD lexicalHandler
   METHOD parse
   METHOD property
   METHOD setContentHandler
   METHOD setDTDHandler
   METHOD setDeclHandler
   METHOD setEntityResolver
   METHOD setErrorHandler
   METHOD setFeature
   METHOD setLexicalHandler
   METHOD setProperty
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlReader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QXMLREADER_DELETE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QXmlDTDHandler * DTDHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_DTDHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlDTDHandler * ptr = obj->DTDHandler ();
    _qt4xhb_createReturnClass ( ptr, "QXMLDTDHANDLER" );
  }
}


/*
virtual QXmlContentHandler * contentHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_CONTENTHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlContentHandler * ptr = obj->contentHandler ();
    _qt4xhb_createReturnClass ( ptr, "QXMLCONTENTHANDLER" );
  }
}


/*
virtual QXmlDeclHandler * declHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_DECLHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlDeclHandler * ptr = obj->declHandler ();
    _qt4xhb_createReturnClass ( ptr, "QXMLDECLHANDLER" );
  }
}


/*
virtual QXmlEntityResolver * entityResolver () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_ENTITYRESOLVER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlEntityResolver * ptr = obj->entityResolver ();
    _qt4xhb_createReturnClass ( ptr, "QXMLENTITYRESOLVER" );
  }
}


/*
virtual QXmlErrorHandler * errorHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_ERRORHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlErrorHandler * ptr = obj->errorHandler ();
    _qt4xhb_createReturnClass ( ptr, "QXMLERRORHANDLER" );
  }
}


/*
virtual bool feature ( const QString & name, bool * ok = 0 ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_FEATURE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    RBOOL( obj->feature ( PQSTRING(1), &par2 ) );
    hb_storl( par2, 2 );
  }
}


/*
virtual bool hasFeature ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_HASFEATURE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasFeature ( PQSTRING(1) ) );
  }
}


/*
virtual bool hasProperty ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_HASPROPERTY )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasProperty ( PQSTRING(1) ) );
  }
}


/*
virtual QXmlLexicalHandler * lexicalHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_LEXICALHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlLexicalHandler * ptr = obj->lexicalHandler ();
    _qt4xhb_createReturnClass ( ptr, "QXMLLEXICALHANDLER" );
  }
}


/*
virtual bool parse ( const QXmlInputSource * input ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_PARSE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QXmlInputSource * par1 = (const QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->parse ( par1 ) );
  }
}


/*
virtual void * property ( const QString & name, bool * ok = 0 ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_PROPERTY )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    void * retptr = obj->property ( PQSTRING(1), &par2 );
    hb_retptr( (void *) retptr );
    hb_storl( par2, 2 );
  }
}


/*
virtual void setContentHandler ( QXmlContentHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETCONTENTHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlContentHandler * par1 = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setContentHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setDTDHandler ( QXmlDTDHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETDTDHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlDTDHandler * par1 = (QXmlDTDHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDTDHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setDeclHandler ( QXmlDeclHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETDECLHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlDeclHandler * par1 = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDeclHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setEntityResolver ( QXmlEntityResolver * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETENTITYRESOLVER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlEntityResolver * par1 = (QXmlEntityResolver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEntityResolver ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setErrorHandler ( QXmlErrorHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETERRORHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlErrorHandler * par1 = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setErrorHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFeature ( const QString & name, bool value ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETFEATURE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFeature ( PQSTRING(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setLexicalHandler ( QXmlLexicalHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETLEXICALHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlLexicalHandler * par1 = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setLexicalHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setProperty ( const QString & name, void * value ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETPROPERTY )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    void * par2 = (void *) hb_parptr(2);
    obj->setProperty ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
