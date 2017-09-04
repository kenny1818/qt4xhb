$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLITEM
#endif

CLASS QXmlResultItems

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD current
   METHOD hasError
   METHOD next
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlResultItems
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlResultItems>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QXmlItem>

/*
QXmlResultItems ()
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_NEW )
{
  QXmlResultItems * o = new QXmlResultItems ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


HB_FUNC_STATIC( QXMLRESULTITEMS_DELETE )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QXmlItem current () const
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_CURRENT )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlItem * ptr = new QXmlItem( obj->current () );
    _qt4xhb_createReturnClass ( ptr, "QXMLITEM", true );
  }
}


/*
bool hasError () const
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_HASERROR )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasError () );
  }
}


/*
QXmlItem next ()
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_NEXT )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlItem * ptr = new QXmlItem( obj->next () );
    _qt4xhb_createReturnClass ( ptr, "QXMLITEM", true );
  }
}


HB_FUNC_STATIC( QXMLRESULTITEMS_NEWFROM )
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

HB_FUNC_STATIC( QXMLRESULTITEMS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLRESULTITEMS_NEWFROM );
}

HB_FUNC_STATIC( QXMLRESULTITEMS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLRESULTITEMS_NEWFROM );
}

HB_FUNC_STATIC( QXMLRESULTITEMS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLRESULTITEMS_SETSELFDESTRUCTION )
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