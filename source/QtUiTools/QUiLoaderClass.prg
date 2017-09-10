/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QLAYOUT
REQUEST QWIDGET
REQUEST QDIR
#endif

CLASS QUiLoader INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addPluginPath
   METHOD availableLayouts
   METHOD availableWidgets
   METHOD clearPluginPaths
   METHOD createAction
   METHOD createActionGroup
   METHOD createLayout
   METHOD createWidget
   METHOD isLanguageChangeEnabled
   METHOD load
   METHOD pluginPaths
   METHOD setLanguageChangeEnabled
   METHOD setWorkingDirectory
   METHOD workingDirectory

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUiLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QUiLoader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QDir>
#include <QAction>
#include <QLayout>

/*
QUiLoader ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUILOADER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QUiLoader * o = new QUiLoader ( OPQOBJECT(1,0) );
    _qt4xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUILOADER_DELETE )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addPluginPath ( const QString & path )
*/
HB_FUNC_STATIC( QUILOADER_ADDPLUGINPATH )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->addPluginPath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList availableLayouts () const
*/
HB_FUNC_STATIC( QUILOADER_AVAILABLELAYOUTS )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->availableLayouts () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList availableWidgets () const
*/
HB_FUNC_STATIC( QUILOADER_AVAILABLEWIDGETS )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->availableWidgets () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clearPluginPaths ()
*/
HB_FUNC_STATIC( QUILOADER_CLEARPLUGINPATHS )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearPluginPaths ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QAction * createAction ( QObject * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEACTION )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && (ISQOBJECT(1)||ISNIL(1)) && ISOPTCHAR(2) )
    {
      QAction * ptr = obj->createAction ( OPQOBJECT(1,0), OPQSTRING(2,QString()) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QActionGroup * createActionGroup ( QObject * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEACTIONGROUP )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && (ISQOBJECT(1)||ISNIL(1)) && ISOPTCHAR(2) )
    {
      QActionGroup * ptr = obj->createActionGroup ( OPQOBJECT(1,0), OPQSTRING(2,QString()) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTIONGROUP" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QLayout * createLayout ( const QString & className, QObject * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATELAYOUT )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) && ISOPTCHAR(3) )
    {
      QLayout * ptr = obj->createLayout ( PQSTRING(1), OPQOBJECT(2,0), OPQSTRING(3,QString()) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QLAYOUT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QWidget * createWidget ( const QString & className, QWidget * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEWIDGET )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && ISOPTCHAR(3) )
    {
      QWidget * ptr = obj->createWidget ( PQSTRING(1), OPQWIDGET(2,0), OPQSTRING(3,QString()) );
      _qt4xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isLanguageChangeEnabled () const
*/
HB_FUNC_STATIC( QUILOADER_ISLANGUAGECHANGEENABLED )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isLanguageChangeEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWidget * load ( QIODevice * device, QWidget * parentWidget = 0 )
*/
HB_FUNC_STATIC( QUILOADER_LOAD )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQWIDGET(2)||ISNIL(2)) )
    {
      QWidget * ptr = obj->load ( PQIODEVICE(1), OPQWIDGET(2,0) );
      _qt4xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList pluginPaths () const
*/
HB_FUNC_STATIC( QUILOADER_PLUGINPATHS )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->pluginPaths () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLanguageChangeEnabled ( bool enabled )
*/
HB_FUNC_STATIC( QUILOADER_SETLANGUAGECHANGEENABLED )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setLanguageChangeEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWorkingDirectory ( const QDir & dir )
*/
HB_FUNC_STATIC( QUILOADER_SETWORKINGDIRECTORY )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDIR(1) )
    {
      obj->setWorkingDirectory ( *PQDIR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDir workingDirectory () const
*/
HB_FUNC_STATIC( QUILOADER_WORKINGDIRECTORY )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDir * ptr = new QDir( obj->workingDirectory () );
      _qt4xhb_createReturnClass ( ptr, "QDIR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
