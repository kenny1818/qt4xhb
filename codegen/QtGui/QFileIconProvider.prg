$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QFileIconProvider

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD icon1
   METHOD icon2
   METHOD icon
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileIconProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFileIconProvider>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFileIconProvider()
*/
HB_FUNC_STATIC( QFILEICONPROVIDER_NEW )
{
  QFileIconProvider * o = new QFileIconProvider ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QFILEICONPROVIDER_DELETE )
{
  QFileIconProvider * obj = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QIcon icon(IconType type) const
*/
HB_FUNC_STATIC( QFILEICONPROVIDER_ICON1 )
{
  QFileIconProvider * obj = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QIcon * ptr = new QIcon( obj->icon ( (QFileIconProvider::IconType) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
virtual QIcon icon(const QFileInfo & info) const
*/
HB_FUNC_STATIC( QFILEICONPROVIDER_ICON2 )
{
  QFileIconProvider * obj = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon ( *PQFILEINFO(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

//[1]virtual QIcon icon(IconType type) const
//[2]virtual QIcon icon(const QFileInfo & info) const

HB_FUNC_STATIC( QFILEICONPROVIDER_ICON )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILEICONPROVIDER_ICON1 );
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    HB_FUNC_EXEC( QFILEICONPROVIDER_ICON2 );
  }
}

/*
virtual QString type(const QFileInfo & info) const
*/
HB_FUNC_STATIC( QFILEICONPROVIDER_TYPE )
{
  QFileIconProvider * obj = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->type ( *PQFILEINFO(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
