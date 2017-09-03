$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCACHEMETADATA
REQUEST QIODEVICE
#endif

CLASS QNetworkDiskCache INHERIT QAbstractNetworkCache

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cacheDirectory
   METHOD fileMetaData
   METHOD maximumCacheSize
   METHOD setCacheDirectory
   METHOD setMaximumCacheSize
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkDiskCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QNetworkDiskCache>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QNetworkDiskCache ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_NEW )
{
  QNetworkDiskCache * o = new QNetworkDiskCache ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QNETWORKDISKCACHE_DELETE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString cacheDirectory () const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CACHEDIRECTORY )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->cacheDirectory () );
  }
}


/*
QNetworkCacheMetaData fileMetaData ( const QString & fileName ) const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_FILEMETADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->fileMetaData ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
  }
}


/*
qint64 maximumCacheSize () const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_MAXIMUMCACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->maximumCacheSize () );
  }
}


/*
void setCacheDirectory ( const QString & cacheDir )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_SETCACHEDIRECTORY )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCacheDirectory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumCacheSize ( qint64 size )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_SETMAXIMUMCACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaximumCacheSize ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qint64 cacheSize () const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->cacheSize () );
  }
}


/*
virtual QIODevice * data ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_DATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->data ( *PQURL(1) );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual void insert ( QIODevice * device )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_INSERT )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insert ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_METADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->metaData ( *PQURL(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
  }
}


/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_PREPARE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->prepare ( *PQNETWORKCACHEMETADATA(1) );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual bool remove ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_REMOVE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->remove ( *PQURL(1) ) );
  }
}


/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_UPDATEMETADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updateMetaData ( *PQNETWORKCACHEMETADATA(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void clear ()
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CLEAR )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
