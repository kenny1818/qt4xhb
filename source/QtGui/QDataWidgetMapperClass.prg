/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTITEMMODEL
REQUEST QBYTEARRAY
REQUEST QMODELINDEX
REQUEST QWIDGET
#endif

CLASS QDataWidgetMapper INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addMapping
   METHOD clearMapping
   METHOD currentIndex
   METHOD itemDelegate
   METHOD mappedPropertyName
   METHOD mappedSection
   METHOD mappedWidgetAt
   METHOD model
   METHOD orientation
   METHOD removeMapping
   METHOD rootIndex
   METHOD setItemDelegate
   METHOD setModel
   METHOD setOrientation
   METHOD setRootIndex
   METHOD setSubmitPolicy
   METHOD submitPolicy
   METHOD revert
   METHOD setCurrentIndex
   METHOD setCurrentModelIndex
   METHOD submit
   METHOD toFirst
   METHOD toLast
   METHOD toNext
   METHOD toPrevious

   METHOD onCurrentIndexChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDataWidgetMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDataWidgetMapper>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QModelIndex>
#include <QAbstractItemDelegate>

/*
QDataWidgetMapper ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QDataWidgetMapper * o = new QDataWidgetMapper ( OPQOBJECT(1,0) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATAWIDGETMAPPER_DELETE )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addMapping ( QWidget * widget, int section )
*/
void QDataWidgetMapper_addMapping1 ()
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addMapping ( PQWIDGET(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )
*/
void QDataWidgetMapper_addMapping2 ()
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addMapping ( PQWIDGET(1), PINT(2), *PQBYTEARRAY(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addMapping ( QWidget * widget, int section )
//[2]void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )

HB_FUNC_STATIC( QDATAWIDGETMAPPER_ADDMAPPING )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QDataWidgetMapper_addMapping1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    QDataWidgetMapper_addMapping2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clearMapping ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_CLEARMAPPING )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearMapping ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int currentIndex () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_CURRENTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->currentIndex () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ITEMDELEGATE )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemDelegate * ptr = obj->itemDelegate ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMDELEGATE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray mappedPropertyName ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MAPPEDPROPERTYNAME )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      QByteArray * ptr = new QByteArray( obj->mappedPropertyName ( PQWIDGET(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int mappedSection ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MAPPEDSECTION )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      RINT( obj->mappedSection ( PQWIDGET(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWidget * mappedWidgetAt ( int section ) const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MAPPEDWIDGETAT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QWidget * ptr = obj->mappedWidgetAt ( PINT(1) );
      _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MODEL )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemModel * ptr = obj->model ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ORIENTATION )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removeMapping ( QWidget * widget )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_REMOVEMAPPING )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->removeMapping ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QModelIndex rootIndex () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ROOTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QModelIndex * ptr = new QModelIndex( obj->rootIndex () );
      _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETITEMDELEGATE )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMDELEGATE(1) )
    {
      obj->setItemDelegate ( PQABSTRACTITEMDELEGATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETMODEL )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
      obj->setModel ( PQABSTRACTITEMMODEL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation ( Qt::Orientation aOrientation )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETORIENTATION )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETROOTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      obj->setRootIndex ( *PQMODELINDEX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSubmitPolicy ( SubmitPolicy policy )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETSUBMITPOLICY )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSubmitPolicy ( (QDataWidgetMapper::SubmitPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SubmitPolicy submitPolicy () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SUBMITPOLICY )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->submitPolicy () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void revert ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_REVERT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->revert ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETCURRENTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCurrentIndex ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentModelIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETCURRENTMODELINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      obj->setCurrentModelIndex ( *PQMODELINDEX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool submit ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SUBMIT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->submit () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void toFirst ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TOFIRST )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->toFirst ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toLast ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TOLAST )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->toLast ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toNext ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TONEXT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->toNext ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toPrevious ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TOPREVIOUS )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->toPrevious ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QDataWidgetMapperSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDATAWIDGETMAPPER_ONCURRENTINDEXCHANGED )
{
  QDataWidgetMapperSlots_connect_signal( "currentIndexChanged(int)", "currentIndexChanged(int)" );
}

#pragma ENDDUMP
