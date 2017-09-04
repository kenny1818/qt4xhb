$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATE
#endif

CLASS QLibraryInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD licensee
   METHOD licensedProducts
   METHOD buildKey
   METHOD buildDate
   METHOD location
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLibraryInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLibraryInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"




/*
static QString licensee()
*/
HB_FUNC_STATIC( QLIBRARYINFO_LICENSEE )
{
  RQSTRING( QLibraryInfo::licensee () );
}


/*
static QString licensedProducts()
*/
HB_FUNC_STATIC( QLIBRARYINFO_LICENSEDPRODUCTS )
{
  RQSTRING( QLibraryInfo::licensedProducts () );
}


/*
static QString buildKey()
*/
HB_FUNC_STATIC( QLIBRARYINFO_BUILDKEY )
{
  RQSTRING( QLibraryInfo::buildKey () );
}


/*
static QDate buildDate()
*/
HB_FUNC_STATIC( QLIBRARYINFO_BUILDDATE )
{
  QDate * ptr = new QDate( QLibraryInfo::buildDate () );
  _qt4xhb_createReturnClass ( ptr, "QDATE", true );
}


/*
static QString location(LibraryLocation)
*/
HB_FUNC_STATIC( QLIBRARYINFO_LOCATION )
{
  RQSTRING( QLibraryInfo::location ( (QLibraryInfo::LibraryLocation) hb_parni(1) ) );
}


HB_FUNC_STATIC( QLIBRARYINFO_NEWFROM )
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

HB_FUNC_STATIC( QLIBRARYINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QLIBRARYINFO_NEWFROM );
}

HB_FUNC_STATIC( QLIBRARYINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QLIBRARYINFO_NEWFROM );
}

HB_FUNC_STATIC( QLIBRARYINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QLIBRARYINFO_SETSELFDESTRUCTION )
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