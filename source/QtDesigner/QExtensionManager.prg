/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QExtensionManager INHERIT QObject,QAbstractExtensionManager

   METHOD new
   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QExtensionManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtDesigner/QExtensionManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QExtensionManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QExtensionManager * obj = new QExtensionManager( OPQOBJECT(1,0) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEXTENSIONMANAGER_DELETE )
{
  QExtensionManager * obj = (QExtensionManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
virtual QObject * extension( QObject * object, const QString & iid ) const
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_EXTENSION )
{
  QExtensionManager * obj = (QExtensionManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
    {
#endif
      QObject * ptr = obj->extension( PQOBJECT(1), PQSTRING(2) );
      Qt4xHb::createReturnQObjectClass( ptr, "QOBJECT" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void registerExtensions( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_REGISTEREXTENSIONS )
{
  QExtensionManager * obj = (QExtensionManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQABSTRACTEXTENSIONFACTORY(1) && ISOPTCHAR(2) )
    {
#endif
      obj->registerExtensions( PQABSTRACTEXTENSIONFACTORY(1), OPQSTRING(2,QString()) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unregisterExtensions( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_UNREGISTEREXTENSIONS )
{
  QExtensionManager * obj = (QExtensionManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQABSTRACTEXTENSIONFACTORY(1) && ISOPTCHAR(2) )
    {
#endif
      obj->unregisterExtensions( PQABSTRACTEXTENSIONFACTORY(1), OPQSTRING(2,QString()) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
