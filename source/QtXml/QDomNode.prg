/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCHARACTERDATA
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMELEMENT
REQUEST QDOMENTITY
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMNAMEDNODEMAP
REQUEST QDOMNODELIST
REQUEST QDOMNOTATION
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
#endif

CLASS QDomNode

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD appendChild
   METHOD attributes
   METHOD childNodes
   METHOD clear
   METHOD cloneNode
   METHOD columnNumber
   METHOD firstChild
   METHOD firstChildElement
   METHOD hasAttributes
   METHOD hasChildNodes
   METHOD insertAfter
   METHOD insertBefore
   METHOD isAttr
   METHOD isCDATASection
   METHOD isCharacterData
   METHOD isComment
   METHOD isDocument
   METHOD isDocumentFragment
   METHOD isDocumentType
   METHOD isElement
   METHOD isEntity
   METHOD isEntityReference
   METHOD isNotation
   METHOD isNull
   METHOD isProcessingInstruction
   METHOD isSupported
   METHOD isText
   METHOD lastChild
   METHOD lastChildElement
   METHOD lineNumber
   METHOD localName
   METHOD namedItem
   METHOD namespaceURI
   METHOD nextSibling
   METHOD nextSiblingElement
   METHOD nodeName
   METHOD nodeType
   METHOD nodeValue
   METHOD normalize
   METHOD ownerDocument
   METHOD parentNode
   METHOD prefix
   METHOD previousSibling
   METHOD previousSiblingElement
   METHOD removeChild
   METHOD replaceChild
   METHOD save
   METHOD setNodeValue
   METHOD setPrefix
   METHOD toAttr
   METHOD toCDATASection
   METHOD toCharacterData
   METHOD toComment
   METHOD toDocument
   METHOD toDocumentFragment
   METHOD toDocumentType
   METHOD toElement
   METHOD toEntity
   METHOD toEntityReference
   METHOD toNotation
   METHOD toProcessingInstruction
   METHOD toText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXml/QDomNode>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomNode ()
*/
void QDomNode_new1()
{
  QDomNode * obj = new QDomNode();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QDomNode ( const QDomNode & n )
*/
void QDomNode_new2()
{
  QDomNode * obj = new QDomNode( *PQDOMNODE(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
[1]QDomNode ()
[2]QDomNode ( const QDomNode & n )
*/

HB_FUNC_STATIC( QDOMNODE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomNode_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMNODE(1) )
  {
    QDomNode_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMNODE_DELETE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

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
QDomNode appendChild( const QDomNode & newChild )
*/
HB_FUNC_STATIC( QDOMNODE_APPENDCHILD )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDOMNODE(1) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->appendChild( *PQDOMNODE(1) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QDomNamedNodeMap attributes() const
*/
HB_FUNC_STATIC( QDOMNODE_ATTRIBUTES )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomNamedNodeMap * ptr = new QDomNamedNodeMap( obj->attributes() );
      Qt4xHb::createReturnClass( ptr, "QDOMNAMEDNODEMAP", true );
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
QDomNodeList childNodes() const
*/
HB_FUNC_STATIC( QDOMNODE_CHILDNODES )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomNodeList * ptr = new QDomNodeList( obj->childNodes() );
      Qt4xHb::createReturnClass( ptr, "QDOMNODELIST", true );
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
void clear()
*/
HB_FUNC_STATIC( QDOMNODE_CLEAR )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
QDomNode cloneNode( bool deep = true ) const
*/
HB_FUNC_STATIC( QDOMNODE_CLONENODE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->cloneNode( OPBOOL(1,true) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
int columnNumber() const
*/
HB_FUNC_STATIC( QDOMNODE_COLUMNNUMBER )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnNumber() );
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
QDomNode firstChild() const
*/
HB_FUNC_STATIC( QDOMNODE_FIRSTCHILD )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->firstChild() );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QDomElement firstChildElement( const QString & tagName = QString() ) const
*/
HB_FUNC_STATIC( QDOMNODE_FIRSTCHILDELEMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
    {
#endif
      QDomElement * ptr = new QDomElement( obj->firstChildElement( OPQSTRING(1,QString()) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMELEMENT", true );
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
bool hasAttributes() const
*/
HB_FUNC_STATIC( QDOMNODE_HASATTRIBUTES )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasAttributes() );
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
bool hasChildNodes() const
*/
HB_FUNC_STATIC( QDOMNODE_HASCHILDNODES )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasChildNodes() );
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
QDomNode insertAfter( const QDomNode & newChild, const QDomNode & refChild )
*/
HB_FUNC_STATIC( QDOMNODE_INSERTAFTER )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDOMNODE(1) && ISQDOMNODE(2) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->insertAfter( *PQDOMNODE(1), *PQDOMNODE(2) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QDomNode insertBefore( const QDomNode & newChild, const QDomNode & refChild )
*/
HB_FUNC_STATIC( QDOMNODE_INSERTBEFORE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDOMNODE(1) && ISQDOMNODE(2) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->insertBefore( *PQDOMNODE(1), *PQDOMNODE(2) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
bool isAttr() const
*/
HB_FUNC_STATIC( QDOMNODE_ISATTR )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAttr() );
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
bool isCDATASection() const
*/
HB_FUNC_STATIC( QDOMNODE_ISCDATASECTION )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCDATASection() );
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
bool isCharacterData() const
*/
HB_FUNC_STATIC( QDOMNODE_ISCHARACTERDATA )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCharacterData() );
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
bool isComment() const
*/
HB_FUNC_STATIC( QDOMNODE_ISCOMMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isComment() );
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
bool isDocument() const
*/
HB_FUNC_STATIC( QDOMNODE_ISDOCUMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDocument() );
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
bool isDocumentFragment() const
*/
HB_FUNC_STATIC( QDOMNODE_ISDOCUMENTFRAGMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDocumentFragment() );
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
bool isDocumentType() const
*/
HB_FUNC_STATIC( QDOMNODE_ISDOCUMENTTYPE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDocumentType() );
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
bool isElement() const
*/
HB_FUNC_STATIC( QDOMNODE_ISELEMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isElement() );
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
bool isEntity() const
*/
HB_FUNC_STATIC( QDOMNODE_ISENTITY )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEntity() );
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
bool isEntityReference() const
*/
HB_FUNC_STATIC( QDOMNODE_ISENTITYREFERENCE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEntityReference() );
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
bool isNotation() const
*/
HB_FUNC_STATIC( QDOMNODE_ISNOTATION )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNotation() );
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
bool isNull() const
*/
HB_FUNC_STATIC( QDOMNODE_ISNULL )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
bool isProcessingInstruction() const
*/
HB_FUNC_STATIC( QDOMNODE_ISPROCESSINGINSTRUCTION )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isProcessingInstruction() );
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
bool isSupported( const QString & feature, const QString & version ) const
*/
HB_FUNC_STATIC( QDOMNODE_ISSUPPORTED )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      RBOOL( obj->isSupported( PQSTRING(1), PQSTRING(2) ) );
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
bool isText() const
*/
HB_FUNC_STATIC( QDOMNODE_ISTEXT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isText() );
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
QDomNode lastChild() const
*/
HB_FUNC_STATIC( QDOMNODE_LASTCHILD )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->lastChild() );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QDomElement lastChildElement( const QString & tagName = QString() ) const
*/
HB_FUNC_STATIC( QDOMNODE_LASTCHILDELEMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
    {
#endif
      QDomElement * ptr = new QDomElement( obj->lastChildElement( OPQSTRING(1,QString()) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMELEMENT", true );
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
int lineNumber() const
*/
HB_FUNC_STATIC( QDOMNODE_LINENUMBER )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lineNumber() );
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
QString localName() const
*/
HB_FUNC_STATIC( QDOMNODE_LOCALNAME )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->localName() );
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
QDomNode namedItem( const QString & name ) const
*/
HB_FUNC_STATIC( QDOMNODE_NAMEDITEM )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->namedItem( PQSTRING(1) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QString namespaceURI() const
*/
HB_FUNC_STATIC( QDOMNODE_NAMESPACEURI )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->namespaceURI() );
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
QDomNode nextSibling() const
*/
HB_FUNC_STATIC( QDOMNODE_NEXTSIBLING )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->nextSibling() );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QDomElement nextSiblingElement( const QString & tagName = QString() ) const
*/
HB_FUNC_STATIC( QDOMNODE_NEXTSIBLINGELEMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
    {
#endif
      QDomElement * ptr = new QDomElement( obj->nextSiblingElement( OPQSTRING(1,QString()) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMELEMENT", true );
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
QString nodeName() const
*/
HB_FUNC_STATIC( QDOMNODE_NODENAME )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->nodeName() );
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
QDomNode::NodeType nodeType() const
*/
HB_FUNC_STATIC( QDOMNODE_NODETYPE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType() );
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
QString nodeValue() const
*/
HB_FUNC_STATIC( QDOMNODE_NODEVALUE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->nodeValue() );
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
void normalize()
*/
HB_FUNC_STATIC( QDOMNODE_NORMALIZE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->normalize();
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
QDomDocument ownerDocument() const
*/
HB_FUNC_STATIC( QDOMNODE_OWNERDOCUMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomDocument * ptr = new QDomDocument( obj->ownerDocument() );
      Qt4xHb::createReturnClass( ptr, "QDOMDOCUMENT", true );
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
QDomNode parentNode() const
*/
HB_FUNC_STATIC( QDOMNODE_PARENTNODE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->parentNode() );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QString prefix() const
*/
HB_FUNC_STATIC( QDOMNODE_PREFIX )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->prefix() );
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
QDomNode previousSibling() const
*/
HB_FUNC_STATIC( QDOMNODE_PREVIOUSSIBLING )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->previousSibling() );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QDomElement previousSiblingElement( const QString & tagName = QString() ) const
*/
HB_FUNC_STATIC( QDOMNODE_PREVIOUSSIBLINGELEMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
    {
#endif
      QDomElement * ptr = new QDomElement( obj->previousSiblingElement( OPQSTRING(1,QString()) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMELEMENT", true );
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
QDomNode removeChild( const QDomNode & oldChild )
*/
HB_FUNC_STATIC( QDOMNODE_REMOVECHILD )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDOMNODE(1) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->removeChild( *PQDOMNODE(1) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QDomNode replaceChild( const QDomNode & newChild, const QDomNode & oldChild )
*/
HB_FUNC_STATIC( QDOMNODE_REPLACECHILD )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDOMNODE(1) && ISQDOMNODE(2) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->replaceChild( *PQDOMNODE(1), *PQDOMNODE(2) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMNODE", true );
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
void save ( QTextStream & str, int indent ) const
*/
void QDomNode_save1()
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->save( *PQTEXTSTREAM(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
*/
void QDomNode_save2()
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->save( *PQTEXTSTREAM(1), PINT(2), (QDomNode::EncodingPolicy) hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void save ( QTextStream & str, int indent ) const
[2]void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
*/

HB_FUNC_STATIC( QDOMNODE_SAVE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QDomNode_save1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISNUM(3) )
  {
    QDomNode_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setNodeValue( const QString & v )
*/
HB_FUNC_STATIC( QDOMNODE_SETNODEVALUE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setNodeValue( PQSTRING(1) );
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
void setPrefix( const QString & pre )
*/
HB_FUNC_STATIC( QDOMNODE_SETPREFIX )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setPrefix( PQSTRING(1) );
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
QDomAttr toAttr() const
*/
HB_FUNC_STATIC( QDOMNODE_TOATTR )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomAttr * ptr = new QDomAttr( obj->toAttr() );
      Qt4xHb::createReturnClass( ptr, "QDOMATTR", true );
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
QDomCDATASection toCDATASection() const
*/
HB_FUNC_STATIC( QDOMNODE_TOCDATASECTION )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomCDATASection * ptr = new QDomCDATASection( obj->toCDATASection() );
      Qt4xHb::createReturnClass( ptr, "QDOMCDATASECTION", true );
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
QDomCharacterData toCharacterData() const
*/
HB_FUNC_STATIC( QDOMNODE_TOCHARACTERDATA )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomCharacterData * ptr = new QDomCharacterData( obj->toCharacterData() );
      Qt4xHb::createReturnClass( ptr, "QDOMCHARACTERDATA", true );
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
QDomComment toComment() const
*/
HB_FUNC_STATIC( QDOMNODE_TOCOMMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomComment * ptr = new QDomComment( obj->toComment() );
      Qt4xHb::createReturnClass( ptr, "QDOMCOMMENT", true );
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
QDomDocument toDocument() const
*/
HB_FUNC_STATIC( QDOMNODE_TODOCUMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomDocument * ptr = new QDomDocument( obj->toDocument() );
      Qt4xHb::createReturnClass( ptr, "QDOMDOCUMENT", true );
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
QDomDocumentFragment toDocumentFragment() const
*/
HB_FUNC_STATIC( QDOMNODE_TODOCUMENTFRAGMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomDocumentFragment * ptr = new QDomDocumentFragment( obj->toDocumentFragment() );
      Qt4xHb::createReturnClass( ptr, "QDOMDOCUMENTFRAGMENT", true );
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
QDomDocumentType toDocumentType() const
*/
HB_FUNC_STATIC( QDOMNODE_TODOCUMENTTYPE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomDocumentType * ptr = new QDomDocumentType( obj->toDocumentType() );
      Qt4xHb::createReturnClass( ptr, "QDOMDOCUMENTTYPE", true );
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
QDomElement toElement() const
*/
HB_FUNC_STATIC( QDOMNODE_TOELEMENT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomElement * ptr = new QDomElement( obj->toElement() );
      Qt4xHb::createReturnClass( ptr, "QDOMELEMENT", true );
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
QDomEntity toEntity() const
*/
HB_FUNC_STATIC( QDOMNODE_TOENTITY )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomEntity * ptr = new QDomEntity( obj->toEntity() );
      Qt4xHb::createReturnClass( ptr, "QDOMENTITY", true );
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
QDomEntityReference toEntityReference() const
*/
HB_FUNC_STATIC( QDOMNODE_TOENTITYREFERENCE )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomEntityReference * ptr = new QDomEntityReference( obj->toEntityReference() );
      Qt4xHb::createReturnClass( ptr, "QDOMENTITYREFERENCE", true );
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
QDomNotation toNotation() const
*/
HB_FUNC_STATIC( QDOMNODE_TONOTATION )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomNotation * ptr = new QDomNotation( obj->toNotation() );
      Qt4xHb::createReturnClass( ptr, "QDOMNOTATION", true );
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
QDomProcessingInstruction toProcessingInstruction() const
*/
HB_FUNC_STATIC( QDOMNODE_TOPROCESSINGINSTRUCTION )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomProcessingInstruction * ptr = new QDomProcessingInstruction( obj->toProcessingInstruction() );
      Qt4xHb::createReturnClass( ptr, "QDOMPROCESSINGINSTRUCTION", true );
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
QDomText toText() const
*/
HB_FUNC_STATIC( QDOMNODE_TOTEXT )
{
  QDomNode * obj = (QDomNode *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomText * ptr = new QDomText( obj->toText() );
      Qt4xHb::createReturnClass( ptr, "QDOMTEXT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QDOMNODE_NEWFROM )
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

HB_FUNC_STATIC( QDOMNODE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDOMNODE_NEWFROM );
}

HB_FUNC_STATIC( QDOMNODE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDOMNODE_NEWFROM );
}

HB_FUNC_STATIC( QDOMNODE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDOMNODE_SETSELFDESTRUCTION )
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
