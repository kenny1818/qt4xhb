$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QURL
#endif

CLASS QNetworkCacheMetaData

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD expirationDate
   METHOD isValid
   METHOD lastModified
   METHOD saveToDisk
   METHOD setExpirationDate
   METHOD setLastModified
   METHOD setSaveToDisk
   METHOD setUrl
   METHOD url

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkCacheMetaData>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

/*
QNetworkCacheMetaData ()
*/
$internalConstructor=|new1|

/*
QNetworkCacheMetaData ( const QNetworkCacheMetaData & other )
*/
$internalConstructor=|new2|const QNetworkCacheMetaData &

//[1]QNetworkCacheMetaData ()
//[2]QNetworkCacheMetaData ( const QNetworkCacheMetaData & other )

HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkCacheMetaData_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1) )
  {
    QNetworkCacheMetaData_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDateTime expirationDate () const
*/
$method=|QDateTime|expirationDate|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QDateTime lastModified () const
*/
$method=|QDateTime|lastModified|

/*
bool saveToDisk () const
*/
$method=|bool|saveToDisk|

/*
void setExpirationDate ( const QDateTime & dateTime )
*/
$method=|void|setExpirationDate|const QDateTime &

/*
void setLastModified ( const QDateTime & dateTime )
*/
$method=|void|setLastModified|const QDateTime &

/*
void setSaveToDisk ( bool allow )
*/
$method=|void|setSaveToDisk|bool

/*
void setUrl ( const QUrl & url )
*/
$method=|void|setUrl|const QUrl &

/*
QUrl url () const
*/
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
