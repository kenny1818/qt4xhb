/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QNETWORKACCESSMANAGER
REQUEST QBYTEARRAY
REQUEST QNETWORKREQUEST
REQUEST QSSLCONFIGURATION
REQUEST QURL

CLASS QNetworkReply INHERIT QIODevice

   DATA class_id INIT Class_Id_QNetworkReply
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD abort
   METHOD attribute
   METHOD error
   METHOD hasRawHeader
   METHOD header
   METHOD ignoreSslErrors1
   METHOD ignoreSslErrors2
   METHOD ignoreSslErrors
   METHOD isFinished
   METHOD isRunning
   METHOD manager
   METHOD operation
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD readBufferSize
   METHOD request
   METHOD setReadBufferSize
   METHOD setSslConfiguration
   METHOD sslConfiguration
   METHOD url
   METHOD close
   METHOD onDownloadProgress
   METHOD onError
   METHOD onFinished
   METHOD onMetaDataChanged
   METHOD onSslErrors
   METHOD onUploadProgress
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QNetworkReply>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QSslConfiguration>

HB_FUNC_STATIC( QNETWORKREPLY_DELETE )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void abort () = 0
*/
HB_FUNC_STATIC( QNETWORKREPLY_ABORT )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->abort (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant attribute ( QNetworkRequest::Attribute code ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ATTRIBUTE )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->attribute (  (QNetworkRequest::Attribute) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
NetworkError error () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ERROR )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error (  ) );
  }
}


/*
bool hasRawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_HASRAWHEADER )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->hasRawHeader ( *par1 ) );
  }
}


/*
QVariant header ( QNetworkRequest::KnownHeaders header ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_HEADER )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->header (  (QNetworkRequest::KnownHeaders) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void ignoreSslErrors ( const QList<QSslError> & errors )
*/
HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS1 )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QSslError> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->ignoreSslErrors ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void ignoreSslErrors ()
*/
HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS2 )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ignoreSslErrors (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]virtual void ignoreSslErrors ()

HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QNETWORKREPLY_IGNORESSLERRORS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKREPLY_IGNORESSLERRORS2 );
  }
}

/*
bool isFinished () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ISFINISHED )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isFinished (  ) );
  }
}


/*
bool isRunning () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ISRUNNING )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isRunning (  ) );
  }
}


/*
QNetworkAccessManager * manager () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_MANAGER )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->manager (  );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
QNetworkAccessManager::Operation operation () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_OPERATION )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->operation (  ) );
  }
}


/*
QByteArray rawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_RAWHEADER )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QByteArray * ptr = new QByteArray( obj->rawHeader ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QList<QByteArray> rawHeaderList () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_RAWHEADERLIST )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->rawHeaderList (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



/*
qint64 readBufferSize () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_READBUFFERSIZE )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->readBufferSize (  );
    hb_retni( i );
  }
}


/*
QNetworkRequest request () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_REQUEST )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkRequest * ptr = new QNetworkRequest( obj->request (  ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKREQUEST", true );
  }
}


/*
virtual void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QNETWORKREPLY_SETREADBUFFERSIZE )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setReadBufferSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSslConfiguration ( const QSslConfiguration & config )
*/
HB_FUNC_STATIC( QNETWORKREPLY_SETSSLCONFIGURATION )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSslConfiguration * par1 = (QSslConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSslConfiguration ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSslConfiguration sslConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_SSLCONFIGURATION )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSslConfiguration * ptr = new QSslConfiguration( obj->sslConfiguration (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_URL )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QNETWORKREPLY_CLOSE )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
