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
REQUEST QITEMSELECTIONMODEL
REQUEST QMODELINDEX
REQUEST QRECT
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QWIDGET
#endif

CLASS QAbstractItemView INHERIT QAbstractScrollArea

   METHOD delete
   METHOD alternatingRowColors
   METHOD autoScrollMargin
   METHOD closePersistentEditor
   METHOD currentIndex
   METHOD defaultDropAction
   METHOD dragDropMode
   METHOD dragDropOverwriteMode
   METHOD dragEnabled
   METHOD editTriggers
   METHOD hasAutoScroll
   METHOD horizontalScrollMode
   METHOD iconSize
   METHOD indexAt
   METHOD indexWidget
   METHOD itemDelegate
   METHOD itemDelegateForColumn
   METHOD itemDelegateForRow
   METHOD keyboardSearch
   METHOD model
   METHOD openPersistentEditor
   METHOD rootIndex
   METHOD scrollTo
   METHOD selectionBehavior
   METHOD selectionMode
   METHOD selectionModel
   METHOD setAlternatingRowColors
   METHOD setAutoScroll
   METHOD setAutoScrollMargin
   METHOD setDefaultDropAction
   METHOD setDragDropMode
   METHOD setDragDropOverwriteMode
   METHOD setDragEnabled
   METHOD setDropIndicatorShown
   METHOD setEditTriggers
   METHOD setHorizontalScrollMode
   METHOD setIconSize
   METHOD setIndexWidget
   METHOD setItemDelegate
   METHOD setItemDelegateForColumn
   METHOD setItemDelegateForRow
   METHOD setModel
   METHOD setSelectionBehavior
   METHOD setSelectionMode
   METHOD setSelectionModel
   METHOD setTabKeyNavigation
   METHOD setTextElideMode
   METHOD setVerticalScrollMode
   METHOD showDropIndicator
   METHOD sizeHintForColumn
   METHOD sizeHintForIndex
   METHOD sizeHintForRow
   METHOD tabKeyNavigation
   METHOD textElideMode
   METHOD verticalScrollMode
   METHOD visualRect
   METHOD inputMethodQuery
   METHOD clearSelection
   METHOD edit
   METHOD reset
   METHOD scrollToBottom
   METHOD scrollToTop
   METHOD selectAll
   METHOD setCurrentIndex
   METHOD setRootIndex
   METHOD update

   METHOD onActivated
   METHOD onClicked
   METHOD onDoubleClicked
   METHOD onEntered
   METHOD onPressed
   METHOD onViewportEntered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractItemView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractItemView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTITEMVIEW_DELETE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool alternatingRowColors () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ALTERNATINGROWCOLORS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->alternatingRowColors () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int autoScrollMargin () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_AUTOSCROLLMARGIN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->autoScrollMargin () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void closePersistentEditor ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CLOSEPERSISTENTEDITOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      obj->closePersistentEditor ( *PQMODELINDEX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QModelIndex currentIndex () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CURRENTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QModelIndex * ptr = new QModelIndex( obj->currentIndex () );
      _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::DropAction defaultDropAction () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DEFAULTDROPACTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->defaultDropAction () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
DragDropMode dragDropMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DRAGDROPMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->dragDropMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool dragDropOverwriteMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DRAGDROPOVERWRITEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->dragDropOverwriteMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool dragEnabled () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DRAGENABLED )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->dragEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
EditTriggers editTriggers () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_EDITTRIGGERS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->editTriggers () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasAutoScroll () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_HASAUTOSCROLL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasAutoScroll () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ScrollMode horizontalScrollMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_HORIZONTALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->horizontalScrollMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ICONSIZE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->iconSize () );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QModelIndex indexAt ( const QPoint & point ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INDEXAT )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->indexAt ( *PQPOINT(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWidget * indexWidget ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INDEXWIDGET )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      QWidget * ptr = obj->indexWidget ( *PQMODELINDEX(1) );
      _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
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
void QAbstractItemView_itemDelegate1 ()
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QAbstractItemDelegate * ptr = obj->itemDelegate ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
*/
void QAbstractItemView_itemDelegate2 ()
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QAbstractItemDelegate * ptr = obj->itemDelegate ( *PQMODELINDEX(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

//[1]QAbstractItemDelegate * itemDelegate () const
//[2]QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE )
{
  if( ISNUMPAR(0) )
  {
    QAbstractItemView_itemDelegate1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QAbstractItemView_itemDelegate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractItemDelegate * itemDelegateForColumn ( int column ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATEFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QAbstractItemDelegate * ptr = obj->itemDelegateForColumn ( PINT(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMDELEGATE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemDelegate * itemDelegateForRow ( int row ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATEFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QAbstractItemDelegate * ptr = obj->itemDelegateForRow ( PINT(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMDELEGATE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void keyboardSearch ( const QString & search )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_KEYBOARDSEARCH )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->keyboardSearch ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_MODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void openPersistentEditor ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_OPENPERSISTENTEDITOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      obj->openPersistentEditor ( *PQMODELINDEX(1) );
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
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ROOTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTO )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQMODELINDEX(1) && ISOPTNUM(2) )
    {
      obj->scrollTo ( *PQMODELINDEX(1), ISNIL(2)? (QAbstractItemView::ScrollHint) QAbstractItemView::EnsureVisible : (QAbstractItemView::ScrollHint) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractItemView::SelectionBehavior selectionBehavior () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTIONBEHAVIOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->selectionBehavior () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemView::SelectionMode selectionMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTIONMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->selectionMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QItemSelectionModel * selectionModel () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTIONMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QItemSelectionModel * ptr = obj->selectionModel ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QITEMSELECTIONMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAlternatingRowColors ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETALTERNATINGROWCOLORS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAlternatingRowColors ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoScroll ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETAUTOSCROLL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAutoScroll ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoScrollMargin ( int margin )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETAUTOSCROLLMARGIN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAutoScrollMargin ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultDropAction ( Qt::DropAction dropAction )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDEFAULTDROPACTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDefaultDropAction ( (Qt::DropAction) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDragDropMode ( DragDropMode behavior )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDRAGDROPMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDragDropMode ( (QAbstractItemView::DragDropMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDragDropOverwriteMode ( bool overwrite )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDRAGDROPOVERWRITEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDragDropOverwriteMode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDragEnabled ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDRAGENABLED )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDragEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDropIndicatorShown ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDROPINDICATORSHOWN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDropIndicatorShown ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEditTriggers ( EditTriggers triggers )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETEDITTRIGGERS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setEditTriggers ( (QAbstractItemView::EditTriggers) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalScrollMode ( ScrollMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETHORIZONTALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHorizontalScrollMode ( (QAbstractItemView::ScrollMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETICONSIZE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->setIconSize ( *PQSIZE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIndexWidget ( const QModelIndex & index, QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETINDEXWIDGET )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQWIDGET(2) )
    {
      obj->setIndexWidget ( *PQMODELINDEX(1), PQWIDGET(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETITEMDELEGATE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void setItemDelegateForColumn ( int column, QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETITEMDELEGATEFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQABSTRACTITEMDELEGATE(2) )
    {
      obj->setItemDelegateForColumn ( PINT(1), PQABSTRACTITEMDELEGATE(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemDelegateForRow ( int row, QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETITEMDELEGATEFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQABSTRACTITEMDELEGATE(2) )
    {
      obj->setItemDelegateForRow ( PINT(1), PQABSTRACTITEMDELEGATE(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void setSelectionBehavior ( QAbstractItemView::SelectionBehavior behavior )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETSELECTIONBEHAVIOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSelectionBehavior ( (QAbstractItemView::SelectionBehavior) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelectionMode ( QAbstractItemView::SelectionMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETSELECTIONMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSelectionMode ( (QAbstractItemView::SelectionMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETSELECTIONMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQITEMSELECTIONMODEL(1) )
    {
      obj->setSelectionModel ( PQITEMSELECTIONMODEL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabKeyNavigation ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETTABKEYNAVIGATION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setTabKeyNavigation ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextElideMode ( Qt::TextElideMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETTEXTELIDEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTextElideMode ( (Qt::TextElideMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalScrollMode ( ScrollMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETVERTICALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setVerticalScrollMode ( (QAbstractItemView::ScrollMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool showDropIndicator () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SHOWDROPINDICATOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->showDropIndicator () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int sizeHintForColumn ( int column ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RINT( obj->sizeHintForColumn ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize sizeHintForIndex ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      QSize * ptr = new QSize( obj->sizeHintForIndex ( *PQMODELINDEX(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int sizeHintForRow ( int row ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RINT( obj->sizeHintForRow ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool tabKeyNavigation () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_TABKEYNAVIGATION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->tabKeyNavigation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::TextElideMode textElideMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_TEXTELIDEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textElideMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ScrollMode verticalScrollMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_VERTICALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->verticalScrollMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QRect visualRect ( const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_VISUALRECT )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      QRect * ptr = new QRect( obj->visualRect ( *PQMODELINDEX(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INPUTMETHODQUERY )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) hb_parni(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clearSelection ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CLEARSELECTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearSelection ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void edit ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_EDIT )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      obj->edit ( *PQMODELINDEX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void reset ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_RESET )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->reset ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollToBottom ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTOBOTTOM )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->scrollToBottom ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollToTop ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTOTOP )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->scrollToTop ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void selectAll ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTALL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->selectAll ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETCURRENTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      obj->setCurrentIndex ( *PQMODELINDEX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETROOTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void update ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_UPDATE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      obj->update ( *PQMODELINDEX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QAbstractItemViewSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ONACTIVATED )
{
  QAbstractItemViewSlots_connect_signal( "activated(QModelIndex)", "activated(QModelIndex)" );
}

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ONCLICKED )
{
  QAbstractItemViewSlots_connect_signal( "clicked(QModelIndex)", "clicked(QModelIndex)" );
}

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ONDOUBLECLICKED )
{
  QAbstractItemViewSlots_connect_signal( "doubleClicked(QModelIndex)", "doubleClicked(QModelIndex)" );
}

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ONENTERED )
{
  QAbstractItemViewSlots_connect_signal( "entered(QModelIndex)", "entered(QModelIndex)" );
}

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ONPRESSED )
{
  QAbstractItemViewSlots_connect_signal( "pressed(QModelIndex)", "pressed(QModelIndex)" );
}

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ONVIEWPORTENTERED )
{
  QAbstractItemViewSlots_connect_signal( "viewportEntered()", "viewportEntered()" );
}

#pragma ENDDUMP
