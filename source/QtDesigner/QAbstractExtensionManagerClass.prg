/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QAbstractExtensionManager

   DATA pointer
   DATA class_id INIT Class_Id_QAbstractExtensionManager
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractExtensionManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractExtensionManager>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_DELETE )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QObject * extension ( QObject * object, const QString & iid ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_EXTENSION )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    QObject * ptr = obj->extension ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_REGISTEREXTENSIONS )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    obj->registerExtensions ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_UNREGISTEREXTENSIONS )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    obj->unregisterExtensions ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_NEWFROM )
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

HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QABSTRACTEXTENSIONMANAGER_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QABSTRACTEXTENSIONMANAGER_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_SETSELFDESTRUCTION )
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
