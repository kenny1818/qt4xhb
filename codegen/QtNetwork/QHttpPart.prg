$header

#include "hbclass.ch"


CLASS QHttpPart

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setBody
   METHOD setBodyDevice
   METHOD setHeader
   METHOD setRawHeader
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHttpPart>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHttpPart ()
*/
HB_FUNC_STATIC( QHTTPPART_NEW1 )
{
  QHttpPart * o = new QHttpPart ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QHttpPart ( const QHttpPart & other )
*/
HB_FUNC_STATIC( QHTTPPART_NEW2 )
{
  QHttpPart * o = new QHttpPart ( *PQHTTPPART(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QHttpPart ()
//[2]QHttpPart ( const QHttpPart & other )

HB_FUNC_STATIC( QHTTPPART_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHTTPPART_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQHTTPPART(1) )
  {
    HB_FUNC_EXEC( QHTTPPART_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHTTPPART_DELETE )
{
  QHttpPart * obj = (QHttpPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setBody ( const QByteArray & body )
*/
HB_FUNC_STATIC( QHTTPPART_SETBODY )
{
  QHttpPart * obj = (QHttpPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBody ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBodyDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QHTTPPART_SETBODYDEVICE )
{
  QHttpPart * obj = (QHttpPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBodyDevice ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeader ( QNetworkRequest::KnownHeaders header, const QVariant & value )
*/
HB_FUNC_STATIC( QHTTPPART_SETHEADER )
{
  QHttpPart * obj = (QHttpPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHeader ( (QNetworkRequest::KnownHeaders) par1, *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRawHeader ( const QByteArray & headerName, const QByteArray & headerValue )
*/
HB_FUNC_STATIC( QHTTPPART_SETRAWHEADER )
{
  QHttpPart * obj = (QHttpPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRawHeader ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
