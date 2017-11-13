$header

#include "hbclass.ch"

CLASS QHttpPart

   DATA pointer
   DATA self_destruction INIT .F.

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
$internalConstructor=|new1|

/*
QHttpPart ( const QHttpPart & other )
*/
$internalConstructor=|new2|const QHttpPart &

//[1]QHttpPart ()
//[2]QHttpPart ( const QHttpPart & other )

HB_FUNC_STATIC( QHTTPPART_NEW )
{
  if( ISNUMPAR(0) )
  {
    QHttpPart_new1();
  }
  else if( ISNUMPAR(1) && ISQHTTPPART(1) )
  {
    QHttpPart_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setBody ( const QByteArray & body )
*/
$method=|void|setBody|const QByteArray &

/*
void setBodyDevice ( QIODevice * device )
*/
$method=|void|setBodyDevice|QIODevice *

/*
void setHeader ( QNetworkRequest::KnownHeaders header, const QVariant & value )
*/
$method=|void|setHeader|QNetworkRequest::KnownHeaders,const QVariant &

/*
void setRawHeader ( const QByteArray & headerName, const QByteArray & headerValue )
*/
$method=|void|setRawHeader|const QByteArray &,const QByteArray &

$extraMethods

#pragma ENDDUMP
