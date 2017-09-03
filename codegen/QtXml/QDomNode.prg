$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMNODE
REQUEST QDOMNAMEDNODEMAP
REQUEST QDOMNODELIST
REQUEST QDOMELEMENT
REQUEST QDOMDOCUMENT
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCHARACTERDATA
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMENTITY
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMNOTATION
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
#endif

CLASS QDomNode

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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
   METHOD save1
   METHOD save2
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

PROCEDURE destroyObject () CLASS QDomNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDomNode>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomNode ()
*/
HB_FUNC_STATIC( QDOMNODE_NEW1 )
{
  QDomNode * o = new QDomNode ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomNode ( const QDomNode & n )
*/
HB_FUNC_STATIC( QDOMNODE_NEW2 )
{
  QDomNode * o = new QDomNode ( *PQDOMNODE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomNode ()
//[2]QDomNode ( const QDomNode & n )

HB_FUNC_STATIC( QDOMNODE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMNODE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMNODE(1) )
  {
    HB_FUNC_EXEC( QDOMNODE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMNODE_DELETE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomNode appendChild ( const QDomNode & newChild )
*/
HB_FUNC_STATIC( QDOMNODE_APPENDCHILD )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->appendChild ( *PQDOMNODE(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNamedNodeMap attributes () const
*/
HB_FUNC_STATIC( QDOMNODE_ATTRIBUTES )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNamedNodeMap * ptr = new QDomNamedNodeMap( obj->attributes () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNAMEDNODEMAP", true );
  }
}


/*
QDomNodeList childNodes () const
*/
HB_FUNC_STATIC( QDOMNODE_CHILDNODES )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNodeList * ptr = new QDomNodeList( obj->childNodes () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODELIST", true );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QDOMNODE_CLEAR )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDomNode cloneNode ( bool deep = true ) const
*/
HB_FUNC_STATIC( QDOMNODE_CLONENODE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->cloneNode ( OPBOOL(1,true) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
int columnNumber () const
*/
HB_FUNC_STATIC( QDOMNODE_COLUMNNUMBER )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnNumber () );
  }
}


/*
QDomNode firstChild () const
*/
HB_FUNC_STATIC( QDOMNODE_FIRSTCHILD )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->firstChild () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomElement firstChildElement ( const QString & tagName = QString() ) const
*/
HB_FUNC_STATIC( QDOMNODE_FIRSTCHILDELEMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomElement * ptr = new QDomElement( obj->firstChildElement ( OPQSTRING(1,QString()) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
bool hasAttributes () const
*/
HB_FUNC_STATIC( QDOMNODE_HASATTRIBUTES )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAttributes () );
  }
}


/*
bool hasChildNodes () const
*/
HB_FUNC_STATIC( QDOMNODE_HASCHILDNODES )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasChildNodes () );
  }
}


/*
QDomNode insertAfter ( const QDomNode & newChild, const QDomNode & refChild )
*/
HB_FUNC_STATIC( QDOMNODE_INSERTAFTER )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->insertAfter ( *PQDOMNODE(1), *PQDOMNODE(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode insertBefore ( const QDomNode & newChild, const QDomNode & refChild )
*/
HB_FUNC_STATIC( QDOMNODE_INSERTBEFORE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->insertBefore ( *PQDOMNODE(1), *PQDOMNODE(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
bool isAttr () const
*/
HB_FUNC_STATIC( QDOMNODE_ISATTR )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAttr () );
  }
}


/*
bool isCDATASection () const
*/
HB_FUNC_STATIC( QDOMNODE_ISCDATASECTION )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCDATASection () );
  }
}


/*
bool isCharacterData () const
*/
HB_FUNC_STATIC( QDOMNODE_ISCHARACTERDATA )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCharacterData () );
  }
}


/*
bool isComment () const
*/
HB_FUNC_STATIC( QDOMNODE_ISCOMMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isComment () );
  }
}


/*
bool isDocument () const
*/
HB_FUNC_STATIC( QDOMNODE_ISDOCUMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDocument () );
  }
}


/*
bool isDocumentFragment () const
*/
HB_FUNC_STATIC( QDOMNODE_ISDOCUMENTFRAGMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDocumentFragment () );
  }
}


/*
bool isDocumentType () const
*/
HB_FUNC_STATIC( QDOMNODE_ISDOCUMENTTYPE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDocumentType () );
  }
}


/*
bool isElement () const
*/
HB_FUNC_STATIC( QDOMNODE_ISELEMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isElement () );
  }
}


/*
bool isEntity () const
*/
HB_FUNC_STATIC( QDOMNODE_ISENTITY )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEntity () );
  }
}


/*
bool isEntityReference () const
*/
HB_FUNC_STATIC( QDOMNODE_ISENTITYREFERENCE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEntityReference () );
  }
}


/*
bool isNotation () const
*/
HB_FUNC_STATIC( QDOMNODE_ISNOTATION )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNotation () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QDOMNODE_ISNULL )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isProcessingInstruction () const
*/
HB_FUNC_STATIC( QDOMNODE_ISPROCESSINGINSTRUCTION )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isProcessingInstruction () );
  }
}


/*
bool isSupported ( const QString & feature, const QString & version ) const
*/
HB_FUNC_STATIC( QDOMNODE_ISSUPPORTED )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSupported ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
bool isText () const
*/
HB_FUNC_STATIC( QDOMNODE_ISTEXT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isText () );
  }
}


/*
QDomNode lastChild () const
*/
HB_FUNC_STATIC( QDOMNODE_LASTCHILD )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->lastChild () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomElement lastChildElement ( const QString & tagName = QString() ) const
*/
HB_FUNC_STATIC( QDOMNODE_LASTCHILDELEMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomElement * ptr = new QDomElement( obj->lastChildElement ( OPQSTRING(1,QString()) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
int lineNumber () const
*/
HB_FUNC_STATIC( QDOMNODE_LINENUMBER )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineNumber () );
  }
}


/*
QString localName () const
*/
HB_FUNC_STATIC( QDOMNODE_LOCALNAME )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->localName () );
  }
}


/*
QDomNode namedItem ( const QString & name ) const
*/
HB_FUNC_STATIC( QDOMNODE_NAMEDITEM )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->namedItem ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QString namespaceURI () const
*/
HB_FUNC_STATIC( QDOMNODE_NAMESPACEURI )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->namespaceURI () );
  }
}


/*
QDomNode nextSibling () const
*/
HB_FUNC_STATIC( QDOMNODE_NEXTSIBLING )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->nextSibling () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomElement nextSiblingElement ( const QString & tagName = QString() ) const
*/
HB_FUNC_STATIC( QDOMNODE_NEXTSIBLINGELEMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomElement * ptr = new QDomElement( obj->nextSiblingElement ( OPQSTRING(1,QString()) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
QString nodeName () const
*/
HB_FUNC_STATIC( QDOMNODE_NODENAME )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->nodeName () );
  }
}


/*
NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMNODE_NODETYPE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}


/*
QString nodeValue () const
*/
HB_FUNC_STATIC( QDOMNODE_NODEVALUE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->nodeValue () );
  }
}


/*
void normalize ()
*/
HB_FUNC_STATIC( QDOMNODE_NORMALIZE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->normalize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDomDocument ownerDocument () const
*/
HB_FUNC_STATIC( QDOMNODE_OWNERDOCUMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomDocument * ptr = new QDomDocument( obj->ownerDocument () );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENT", true );
  }
}


/*
QDomNode parentNode () const
*/
HB_FUNC_STATIC( QDOMNODE_PARENTNODE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->parentNode () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QString prefix () const
*/
HB_FUNC_STATIC( QDOMNODE_PREFIX )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->prefix () );
  }
}


/*
QDomNode previousSibling () const
*/
HB_FUNC_STATIC( QDOMNODE_PREVIOUSSIBLING )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->previousSibling () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomElement previousSiblingElement ( const QString & tagName = QString() ) const
*/
HB_FUNC_STATIC( QDOMNODE_PREVIOUSSIBLINGELEMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomElement * ptr = new QDomElement( obj->previousSiblingElement ( OPQSTRING(1,QString()) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
QDomNode removeChild ( const QDomNode & oldChild )
*/
HB_FUNC_STATIC( QDOMNODE_REMOVECHILD )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->removeChild ( *PQDOMNODE(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode replaceChild ( const QDomNode & newChild, const QDomNode & oldChild )
*/
HB_FUNC_STATIC( QDOMNODE_REPLACECHILD )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->replaceChild ( *PQDOMNODE(1), *PQDOMNODE(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
void save ( QTextStream & str, int indent ) const
*/
HB_FUNC_STATIC( QDOMNODE_SAVE1 )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextStream * par1 = (QTextStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->save ( *par1, PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
*/
HB_FUNC_STATIC( QDOMNODE_SAVE2 )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextStream * par1 = (QTextStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->save ( *par1, PINT(2), (QDomNode::EncodingPolicy) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void save ( QTextStream & str, int indent ) const
//[2]void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const

HB_FUNC_STATIC( QDOMNODE_SAVE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDOMNODE_SAVE1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDOMNODE_SAVE2 );
  }
}

/*
void setNodeValue ( const QString & v )
*/
HB_FUNC_STATIC( QDOMNODE_SETNODEVALUE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNodeValue ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrefix ( const QString & pre )
*/
HB_FUNC_STATIC( QDOMNODE_SETPREFIX )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPrefix ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDomAttr toAttr () const
*/
HB_FUNC_STATIC( QDOMNODE_TOATTR )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomAttr * ptr = new QDomAttr( obj->toAttr () );
    _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
QDomCDATASection toCDATASection () const
*/
HB_FUNC_STATIC( QDOMNODE_TOCDATASECTION )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomCDATASection * ptr = new QDomCDATASection( obj->toCDATASection () );
    _qt4xhb_createReturnClass ( ptr, "QDOMCDATASECTION", true );
  }
}


/*
QDomCharacterData toCharacterData () const
*/
HB_FUNC_STATIC( QDOMNODE_TOCHARACTERDATA )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomCharacterData * ptr = new QDomCharacterData( obj->toCharacterData () );
    _qt4xhb_createReturnClass ( ptr, "QDOMCHARACTERDATA", true );
  }
}


/*
QDomComment toComment () const
*/
HB_FUNC_STATIC( QDOMNODE_TOCOMMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomComment * ptr = new QDomComment( obj->toComment () );
    _qt4xhb_createReturnClass ( ptr, "QDOMCOMMENT", true );
  }
}


/*
QDomDocument toDocument () const
*/
HB_FUNC_STATIC( QDOMNODE_TODOCUMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomDocument * ptr = new QDomDocument( obj->toDocument () );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENT", true );
  }
}


/*
QDomDocumentFragment toDocumentFragment () const
*/
HB_FUNC_STATIC( QDOMNODE_TODOCUMENTFRAGMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomDocumentFragment * ptr = new QDomDocumentFragment( obj->toDocumentFragment () );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENTFRAGMENT", true );
  }
}


/*
QDomDocumentType toDocumentType () const
*/
HB_FUNC_STATIC( QDOMNODE_TODOCUMENTTYPE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomDocumentType * ptr = new QDomDocumentType( obj->toDocumentType () );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENTTYPE", true );
  }
}


/*
QDomElement toElement () const
*/
HB_FUNC_STATIC( QDOMNODE_TOELEMENT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomElement * ptr = new QDomElement( obj->toElement () );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
QDomEntity toEntity () const
*/
HB_FUNC_STATIC( QDOMNODE_TOENTITY )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomEntity * ptr = new QDomEntity( obj->toEntity () );
    _qt4xhb_createReturnClass ( ptr, "QDOMENTITY", true );
  }
}


/*
QDomEntityReference toEntityReference () const
*/
HB_FUNC_STATIC( QDOMNODE_TOENTITYREFERENCE )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomEntityReference * ptr = new QDomEntityReference( obj->toEntityReference () );
    _qt4xhb_createReturnClass ( ptr, "QDOMENTITYREFERENCE", true );
  }
}


/*
QDomNotation toNotation () const
*/
HB_FUNC_STATIC( QDOMNODE_TONOTATION )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNotation * ptr = new QDomNotation( obj->toNotation () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNOTATION", true );
  }
}


/*
QDomProcessingInstruction toProcessingInstruction () const
*/
HB_FUNC_STATIC( QDOMNODE_TOPROCESSINGINSTRUCTION )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomProcessingInstruction * ptr = new QDomProcessingInstruction( obj->toProcessingInstruction () );
    _qt4xhb_createReturnClass ( ptr, "QDOMPROCESSINGINSTRUCTION", true );
  }
}


/*
QDomText toText () const
*/
HB_FUNC_STATIC( QDOMNODE_TOTEXT )
{
  QDomNode * obj = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomText * ptr = new QDomText( obj->toText () );
    _qt4xhb_createReturnClass ( ptr, "QDOMTEXT", true );
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

  hb_itemReturn( self );
}


#pragma ENDDUMP
