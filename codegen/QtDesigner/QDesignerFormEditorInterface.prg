$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERACTIONEDITORINTERFACE
REQUEST QEXTENSIONMANAGER
REQUEST QDESIGNERFORMWINDOWMANAGERINTERFACE
REQUEST QDESIGNEROBJECTINSPECTORINTERFACE
REQUEST QDESIGNERPROPERTYEDITORINTERFACE
REQUEST QWIDGET
REQUEST QDESIGNERWIDGETBOXINTERFACE
#endif

CLASS QDesignerFormEditorInterface INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actionEditor
   METHOD extensionManager
   METHOD formWindowManager
   METHOD objectInspector
   METHOD propertyEditor
   METHOD setActionEditor
   METHOD setObjectInspector
   METHOD setPropertyEditor
   METHOD setWidgetBox
   METHOD topLevel
   METHOD widgetBox
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerFormEditorInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDesignerFormEditorInterface ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_NEW )
{
  QDesignerFormEditorInterface * o = new QDesignerFormEditorInterface ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QDesignerActionEditorInterface * actionEditor () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_ACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerActionEditorInterface * ptr = obj->actionEditor ();
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERACTIONEDITORINTERFACE" );
  }
}


/*
QExtensionManager * extensionManager () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_EXTENSIONMANAGER )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QExtensionManager * ptr = obj->extensionManager ();
    _qt4xhb_createReturnClass ( ptr, "QEXTENSIONMANAGER" );
  }
}


/*
QDesignerFormWindowManagerInterface * formWindowManager () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_FORMWINDOWMANAGER )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormWindowManagerInterface * ptr = obj->formWindowManager ();
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );
  }
}


/*
QDesignerObjectInspectorInterface * objectInspector () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_OBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerObjectInspectorInterface * ptr = obj->objectInspector ();
    _qt4xhb_createReturnClass ( ptr, "QDESIGNEROBJECTINSPECTORINTERFACE" );
  }
}


/*
QDesignerPropertyEditorInterface * propertyEditor () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_PROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerPropertyEditorInterface * ptr = obj->propertyEditor ();
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERPROPERTYEDITORINTERFACE" );
  }
}


/*
void setActionEditor ( QDesignerActionEditorInterface * actionEditor )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerActionEditorInterface * par1 = (QDesignerActionEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setActionEditor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setObjectInspector ( QDesignerObjectInspectorInterface * objectInspector )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETOBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerObjectInspectorInterface * par1 = (QDesignerObjectInspectorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setObjectInspector ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPropertyEditor ( QDesignerPropertyEditorInterface * propertyEditor )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETPROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerPropertyEditorInterface * par1 = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPropertyEditor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidgetBox ( QDesignerWidgetBoxInterface * widgetBox )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETWIDGETBOX )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerWidgetBoxInterface * par1 = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setWidgetBox ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * topLevel () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_TOPLEVEL )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->topLevel ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
QDesignerWidgetBoxInterface * widgetBox () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_WIDGETBOX )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerWidgetBoxInterface * ptr = obj->widgetBox ();
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERWIDGETBOXINTERFACE" );
  }
}




#pragma ENDDUMP
