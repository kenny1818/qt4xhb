/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QITEMSELECTION
REQUEST QMODELINDEX
#endif

CLASS QItemSelectionModel INHERIT QObject

   METHOD new
   METHOD delete
   METHOD columnIntersectsSelection
   METHOD currentIndex
   METHOD hasSelection
   METHOD isColumnSelected
   METHOD isRowSelected
   METHOD isSelected
   METHOD model
   METHOD rowIntersectsSelection
   METHOD selectedColumns
   METHOD selectedIndexes
   METHOD selectedRows
   METHOD selection
   METHOD clear
   METHOD clearSelection
   METHOD reset
   METHOD select
   METHOD setCurrentIndex

   METHOD onCurrentChanged
   METHOD onCurrentColumnChanged
   METHOD onCurrentRowChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QItemSelectionModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QItemSelectionModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QItemSelectionModel ( QAbstractItemModel * model )
*/
void QItemSelectionModel_new1()
{
  QItemSelectionModel * o = new QItemSelectionModel( PQABSTRACTITEMMODEL(1) );
  Qt4xHb::returnNewObject( o, false );
}

/*
QItemSelectionModel ( QAbstractItemModel * model, QObject * parent )
*/
void QItemSelectionModel_new2()
{
  QItemSelectionModel * o = new QItemSelectionModel( PQABSTRACTITEMMODEL(1), PQOBJECT(2) );
  Qt4xHb::returnNewObject( o, false );
}

//[1]QItemSelectionModel ( QAbstractItemModel * model )
//[2]QItemSelectionModel ( QAbstractItemModel * model, QObject * parent )

HB_FUNC_STATIC( QITEMSELECTIONMODEL_NEW )
{
  if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
  {
    QItemSelectionModel_new1();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTITEMMODEL(1) && ISQOBJECT(2) )
  {
    QItemSelectionModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QITEMSELECTIONMODEL_DELETE )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
bool columnIntersectsSelection ( int column, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_COLUMNINTERSECTSSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQMODELINDEX(2) )
    {
#endif
      RBOOL( obj->columnIntersectsSelection( PINT(1), *PQMODELINDEX(2) ) );
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
QModelIndex currentIndex () const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CURRENTINDEX )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->currentIndex() );
      Qt4xHb::createReturnClass( ptr, "QMODELINDEX", true );
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
bool hasSelection () const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_HASSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasSelection() );
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
bool isColumnSelected ( int column, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ISCOLUMNSELECTED )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQMODELINDEX(2) )
    {
#endif
      RBOOL( obj->isColumnSelected( PINT(1), *PQMODELINDEX(2) ) );
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
bool isRowSelected ( int row, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ISROWSELECTED )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQMODELINDEX(2) )
    {
#endif
      RBOOL( obj->isRowSelected( PINT(1), *PQMODELINDEX(2) ) );
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
bool isSelected ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ISSELECTED )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->isSelected( *PQMODELINDEX(1) ) );
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
const QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_MODEL )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QAbstractItemModel * ptr = obj->model();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTITEMMODEL" );
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
bool rowIntersectsSelection ( int row, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ROWINTERSECTSSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQMODELINDEX(2) )
    {
#endif
      RBOOL( obj->rowIntersectsSelection( PINT(1), *PQMODELINDEX(2) ) );
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
QModelIndexList selectedColumns ( int row = 0 ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDCOLUMNS )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QModelIndexList list = obj->selectedColumns( OPINT(1,0) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QModelIndexList selectedIndexes () const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDINDEXES )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QModelIndexList list = obj->selectedIndexes();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QModelIndexList selectedRows ( int column = 0 ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDROWS )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QModelIndexList list = obj->selectedRows( OPINT(1,0) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
const QItemSelection selection () const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QItemSelection * ptr = new QItemSelection( obj->selection() );
      Qt4xHb::createReturnClass( ptr, "QITEMSELECTION", true );
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
virtual void clear ()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CLEAR )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
void clearSelection ()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CLEARSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearSelection();
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
virtual void reset ()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_RESET )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset();
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
virtual void select ( const QModelIndex & index, QItemSelectionModel::SelectionFlags command )
*/
void QItemSelectionModel_select1()
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->select( *PQMODELINDEX(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void select ( const QItemSelection & selection, QItemSelectionModel::SelectionFlags command )
*/
void QItemSelectionModel_select2()
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->select( *PQITEMSELECTION(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void select ( const QModelIndex & index, QItemSelectionModel::SelectionFlags command )
//[2]virtual void select ( const QItemSelection & selection, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECT )
{
  if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
  {
    QItemSelectionModel_select1();
  }
  else if( ISNUMPAR(2) && ISQITEMSELECTION(1) && ISNUM(2) )
  {
    QItemSelectionModel_select2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCurrentIndex ( const QModelIndex & index, QItemSelectionModel::SelectionFlags command )
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SETCURRENTINDEX )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
    {
#endif
      obj->setCurrentIndex( *PQMODELINDEX(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
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

void QItemSelectionModelSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QITEMSELECTIONMODEL_ONCURRENTCHANGED )
{
  QItemSelectionModelSlots_connect_signal( "currentChanged(QModelIndex,QModelIndex)", "currentChanged(QModelIndex,QModelIndex)" );
}

HB_FUNC_STATIC( QITEMSELECTIONMODEL_ONCURRENTCOLUMNCHANGED )
{
  QItemSelectionModelSlots_connect_signal( "currentColumnChanged(QModelIndex,QModelIndex)", "currentColumnChanged(QModelIndex,QModelIndex)" );
}

HB_FUNC_STATIC( QITEMSELECTIONMODEL_ONCURRENTROWCHANGED )
{
  QItemSelectionModelSlots_connect_signal( "currentRowChanged(QModelIndex,QModelIndex)", "currentRowChanged(QModelIndex,QModelIndex)" );
}

HB_FUNC_STATIC( QITEMSELECTIONMODEL_ONSELECTIONCHANGED )
{
  QItemSelectionModelSlots_connect_signal( "selectionChanged(QItemSelection,QItemSelection)", "selectionChanged(QItemSelection,QItemSelection)" );
}

#pragma ENDDUMP
