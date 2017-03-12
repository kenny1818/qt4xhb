/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QDESIGNERFORMWINDOWINTERFACE
#endif

CLASS QDesignerFormWindowCursorInterface

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerFormWindowCursorInterface
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD current
   METHOD formWindow
   METHOD hasSelection
   METHOD isWidgetSelected
   METHOD movePosition
   METHOD position
   METHOD selectedWidget
   METHOD selectedWidgetCount
   METHOD setPosition
   METHOD widget
   METHOD widgetCount
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerFormWindowCursorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDesignerFormWindowCursorInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_DELETE )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QWidget * current () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_CURRENT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->current (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QDesignerFormWindowInterface * formWindow () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_FORMWINDOW )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormWindowInterface * ptr = obj->formWindow (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
  }
}


/*
virtual bool hasSelection () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_HASSELECTION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasSelection (  ) );
  }
}


/*
bool isWidgetSelected ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_ISWIDGETSELECTED )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isWidgetSelected ( par1 ) );
  }
}


/*
virtual bool movePosition ( MoveOperation operation, MoveMode mode = MoveAnchor ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_MOVEPOSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->movePosition ( (QDesignerFormWindowCursorInterface::MoveOperation) hb_parni(1), ISNIL(2)? QDesignerFormWindowCursorInterface::MoveAnchor : (QDesignerFormWindowCursorInterface::MoveMode) hb_parni(2) ) );
  }
}


/*
virtual int position () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_POSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->position (  ) );
  }
}



/*
virtual QWidget * selectedWidget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELECTEDWIDGET )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->selectedWidget ( hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
virtual int selectedWidgetCount () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELECTEDWIDGETCOUNT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->selectedWidgetCount (  ) );
  }
}


/*
virtual void setPosition ( int position, MoveMode mode = MoveAnchor ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SETPOSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPosition ( hb_parni(1), ISNIL(2)? QDesignerFormWindowCursorInterface::MoveAnchor : (QDesignerFormWindowCursorInterface::MoveMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
virtual QWidget * widget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_WIDGET )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ( hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
virtual int widgetCount () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_WIDGETCOUNT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->widgetCount (  ) );
  }
}


HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SETSELFDESTRUCTION )
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
