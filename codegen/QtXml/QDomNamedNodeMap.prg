$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMNODE
#endif

CLASS QDomNamedNodeMap

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD contains
   METHOD count
   METHOD isEmpty
   METHOD item
   METHOD length
   METHOD namedItem
   METHOD namedItemNS
   METHOD removeNamedItem
   METHOD removeNamedItemNS
   METHOD setNamedItem
   METHOD setNamedItemNS
   METHOD size
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomNamedNodeMap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomNamedNodeMap ()
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW1 )
{
  QDomNamedNodeMap * o = new QDomNamedNodeMap ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomNamedNodeMap ( const QDomNamedNodeMap & n )
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW2 )
{
  QDomNamedNodeMap * o = new QDomNamedNodeMap ( *PQDOMNAMEDNODEMAP(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomNamedNodeMap ()
//[2]QDomNamedNodeMap ( const QDomNamedNodeMap & n )

HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMNAMEDNODEMAP(1) )
  {
    HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool contains ( const QString & name ) const
*/
$method=|bool|contains|const QString &

/*
int count () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_COUNT )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_ISEMPTY )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
QDomNode item ( int index ) const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_ITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * ptr = new QDomNode( obj->item ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
uint length () const
*/
HB_FUNC_STATIC( QDOMNAMEDNODEMAP_LENGTH )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->length () );
  }
}

/*
QDomNode namedItem ( const QString & name ) const
*/
$method=|QDomNode|namedItem|const QString &

/*
QDomNode namedItemNS ( const QString & nsURI, const QString & localName ) const
*/
$method=|QDomNode|namedItemNS|const QString &,const QString &

/*
QDomNode removeNamedItem ( const QString & name )
*/
$method=|QDomNode|removeNamedItem|const QString &

/*
QDomNode removeNamedItemNS ( const QString & nsURI, const QString & localName )
*/
$method=|QDomNode|removeNamedItemNS|const QString &,const QString &

/*
QDomNode setNamedItem ( const QDomNode & newNode )
*/
$method=|QDomNode|setNamedItem|const QDomNode &

/*
QDomNode setNamedItemNS ( const QDomNode & newNode )
*/
$method=|QDomNode|setNamedItemNS|const QDomNode &

/*
int size () const
*/
$method=|int|size|

$extraMethods

#pragma ENDDUMP
