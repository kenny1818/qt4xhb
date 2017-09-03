$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

CLASS QItemEditorCreatorBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createWidget
   METHOD valuePropertyName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemEditorCreatorBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QItemEditorCreatorBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QITEMEDITORCREATORBASE_DELETE )
{
  QItemEditorCreatorBase * obj = (QItemEditorCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QWidget * createWidget ( QWidget * parent ) const = 0
*/
HB_FUNC_STATIC( QITEMEDITORCREATORBASE_CREATEWIDGET )
{
  QItemEditorCreatorBase * obj = (QItemEditorCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->createWidget ( PQWIDGET(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
virtual QByteArray valuePropertyName () const = 0
*/
HB_FUNC_STATIC( QITEMEDITORCREATORBASE_VALUEPROPERTYNAME )
{
  QItemEditorCreatorBase * obj = (QItemEditorCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->valuePropertyName () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

HB_FUNC_STATIC( QITEMEDITORCREATORBASE_NEWFROM )
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

HB_FUNC_STATIC( QITEMEDITORCREATORBASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QITEMEDITORCREATORBASE_NEWFROM );
}

HB_FUNC_STATIC( QITEMEDITORCREATORBASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QITEMEDITORCREATORBASE_NEWFROM );
}

HB_FUNC_STATIC( QITEMEDITORCREATORBASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QITEMEDITORCREATORBASE_SETSELFDESTRUCTION )
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
