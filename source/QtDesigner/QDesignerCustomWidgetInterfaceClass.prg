/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QICON
#endif

CLASS QDesignerCustomWidgetInterface

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerCustomWidgetInterface
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD codeTemplate
   METHOD createWidget
   METHOD domXml
   METHOD group
   METHOD icon
   METHOD includeFile
   METHOD initialize
   METHOD isContainer
   METHOD isInitialized
   METHOD name
   METHOD toolTip
   METHOD whatsThis
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerCustomWidgetInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDesignerCustomWidgetInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_DELETE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString codeTemplate () const
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_CODETEMPLATE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->codeTemplate (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual QWidget * createWidget ( QWidget * parent ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_CREATEWIDGET )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * ptr = obj->createWidget ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QString domXml () const
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_DOMXML )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->domXml (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual QString group () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_GROUP )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->group (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual QIcon icon () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_ICON )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
virtual QString includeFile () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_INCLUDEFILE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->includeFile (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual void initialize ( QDesignerFormEditorInterface * formEditor )
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_INITIALIZE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormEditorInterface * par1 = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->initialize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isContainer () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_ISCONTAINER )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isContainer (  ) );
  }
}


/*
virtual bool isInitialized () const
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_ISINITIALIZED )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isInitialized (  ) );
  }
}


/*
virtual QString name () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_NAME )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual QString toolTip () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_TOOLTIP )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toolTip (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual QString whatsThis () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_WHATSTHIS )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->whatsThis (  );
    hb_retc( RQSTRING(str1) );
  }
}


HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_SETSELFDESTRUCTION )
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
