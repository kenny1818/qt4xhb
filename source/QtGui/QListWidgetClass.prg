/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLISTWIDGETITEM
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QListWidget INHERIT QListView

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addItems
   METHOD closePersistentEditor
   METHOD count
   METHOD currentItem
   METHOD currentRow
   METHOD editItem
   METHOD findItems
   METHOD insertItem
   METHOD insertItems
   METHOD isSortingEnabled
   METHOD item
   METHOD itemAt
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD row
   METHOD selectedItems
   METHOD setCurrentItem
   METHOD setCurrentRow
   METHOD setItemWidget
   METHOD setSortingEnabled
   METHOD sortItems
   METHOD takeItem
   METHOD visualItemRect
   METHOD dropEvent
   METHOD clear
   METHOD scrollToItem

   METHOD onCurrentItemChanged
   METHOD onCurrentRowChanged
   METHOD onCurrentTextChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemPressed
   METHOD onItemSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QListWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QListWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QListWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLISTWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QListWidget * o = new QListWidget ( OPQWIDGET(1,0) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLISTWIDGET_DELETE )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addItem ( const QString & label )
*/
void QListWidget_addItem1 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addItem ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem ( QListWidgetItem * item )
*/
void QListWidget_addItem2 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addItem ( PQLISTWIDGETITEM(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addItem ( const QString & label )
//[2]void addItem ( QListWidgetItem * item )

HB_FUNC_STATIC( QLISTWIDGET_ADDITEM )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QListWidget_addItem1();
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidget_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addItems ( const QStringList & labels )
*/
HB_FUNC_STATIC( QLISTWIDGET_ADDITEMS )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->addItems ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void closePersistentEditor ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_CLOSEPERSISTENTEDITOR )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
      obj->closePersistentEditor ( PQLISTWIDGETITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int count () const
*/
HB_FUNC_STATIC( QLISTWIDGET_COUNT )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->count () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QListWidgetItem * currentItem () const
*/
HB_FUNC_STATIC( QLISTWIDGET_CURRENTITEM )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QListWidgetItem * ptr = obj->currentItem ();
      _qt4xhb_createReturnClass ( ptr, "QLISTWIDGETITEM", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int currentRow () const
*/
HB_FUNC_STATIC( QLISTWIDGET_CURRENTROW )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->currentRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void editItem ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_EDITITEM )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
      obj->editItem ( PQLISTWIDGETITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QListWidgetItem *> findItems ( const QString & text, Qt::MatchFlags flags ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_FINDITEMS )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
      QList<QListWidgetItem *> list = obj->findItems ( PQSTRING(1), (Qt::MatchFlags) hb_parni(2) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QLISTWIDGETITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QListWidgetItem *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QLISTWIDGETITEM", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void insertItem ( int row, QListWidgetItem * item )
*/
void QListWidget_insertItem1 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->insertItem ( PINT(1), PQLISTWIDGETITEM(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertItem ( int row, const QString & label )
*/
void QListWidget_insertItem2 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->insertItem ( PINT(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void insertItem ( int row, QListWidgetItem * item )
//[2]void insertItem ( int row, const QString & label )

HB_FUNC_STATIC( QLISTWIDGET_INSERTITEM )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQLISTWIDGETITEM(2) )
  {
    QListWidget_insertItem1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QListWidget_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertItems ( int row, const QStringList & labels )
*/
HB_FUNC_STATIC( QLISTWIDGET_INSERTITEMS )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
    {
      obj->insertItems ( PINT(1), PQSTRINGLIST(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isSortingEnabled () const
*/
HB_FUNC_STATIC( QLISTWIDGET_ISSORTINGENABLED )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSortingEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QListWidgetItem * item ( int row ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ITEM )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QListWidgetItem * ptr = obj->item ( PINT(1) );
      _qt4xhb_createReturnClass ( ptr, "QLISTWIDGETITEM", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QListWidgetItem * itemAt ( const QPoint & p ) const
*/
void QListWidget_itemAt1 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QListWidgetItem * ptr = obj->itemAt ( *PQPOINT(1) );
      _qt4xhb_createReturnClass ( ptr, "QLISTWIDGETITEM", false );
  }
}

/*
QListWidgetItem * itemAt ( int x, int y ) const
*/
void QListWidget_itemAt2 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QListWidgetItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
      _qt4xhb_createReturnClass ( ptr, "QLISTWIDGETITEM", false );
  }
}

//[1]QListWidgetItem * itemAt ( const QPoint & p ) const
//[2]QListWidgetItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QLISTWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QListWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QListWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWidget * itemWidget ( QListWidgetItem * item ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ITEMWIDGET )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
      QWidget * ptr = obj->itemWidget ( PQLISTWIDGETITEM(1) );
      _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void openPersistentEditor ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_OPENPERSISTENTEDITOR )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
      obj->openPersistentEditor ( PQLISTWIDGETITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeItemWidget ( QListWidgetItem * item )
*/
HB_FUNC_STATIC( QLISTWIDGET_REMOVEITEMWIDGET )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
      obj->removeItemWidget ( PQLISTWIDGETITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int row ( const QListWidgetItem * item ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_ROW )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
      RINT( obj->row ( PQLISTWIDGETITEM(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QListWidgetItem *> selectedItems () const
*/
HB_FUNC_STATIC( QLISTWIDGET_SELECTEDITEMS )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QListWidgetItem *> list = obj->selectedItems ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QLISTWIDGETITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QListWidgetItem *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QLISTWIDGETITEM", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCurrentItem ( QListWidgetItem * item )
*/
void QListWidget_setCurrentItem1 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->setCurrentItem ( PQLISTWIDGETITEM(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/
void QListWidget_setCurrentItem2 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->setCurrentItem ( PQLISTWIDGETITEM(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCurrentItem ( QListWidgetItem * item )
//[2]void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQLISTWIDGETITEM(1) && ISNUM(2) )
  {
    QListWidget_setCurrentItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCurrentRow ( int row )
*/
void QListWidget_setCurrentRow1 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->setCurrentRow ( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )
*/
void QListWidget_setCurrentRow2 ()
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->setCurrentRow ( PINT(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCurrentRow ( int row )
//[2]void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTROW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QListWidget_setCurrentRow1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QListWidget_setCurrentRow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setItemWidget ( QListWidgetItem * item, QWidget * widget )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETITEMWIDGET )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQLISTWIDGETITEM(1) && ISQWIDGET(2) )
    {
      obj->setItemWidget ( PQLISTWIDGETITEM(1), PQWIDGET(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSortingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QLISTWIDGET_SETSORTINGENABLED )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setSortingEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void sortItems ( Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QLISTWIDGET_SORTITEMS )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      obj->sortItems ( ISNIL(1)? (Qt::SortOrder) Qt::AscendingOrder : (Qt::SortOrder) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QListWidgetItem * takeItem ( int row )
*/
HB_FUNC_STATIC( QLISTWIDGET_TAKEITEM )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QListWidgetItem * ptr = obj->takeItem ( PINT(1) );
      _qt4xhb_createReturnClass ( ptr, "QLISTWIDGETITEM", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect visualItemRect ( const QListWidgetItem * item ) const
*/
HB_FUNC_STATIC( QLISTWIDGET_VISUALITEMRECT )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
    {
      QRect * ptr = new QRect( obj->visualItemRect ( PQLISTWIDGETITEM(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void dropEvent ( QDropEvent * event )
*/
HB_FUNC_STATIC( QLISTWIDGET_DROPEVENT )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDROPEVENT(1) )
    {
      obj->dropEvent ( PQDROPEVENT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clear ()
*/
HB_FUNC_STATIC( QLISTWIDGET_CLEAR )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollToItem ( const QListWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QLISTWIDGET_SCROLLTOITEM )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQLISTWIDGETITEM(1) && ISOPTNUM(2) )
    {
      obj->scrollToItem ( PQLISTWIDGETITEM(1), ISNIL(2)? (QAbstractItemView::ScrollHint) QAbstractItemView::EnsureVisible : (QAbstractItemView::ScrollHint) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QListWidgetSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QLISTWIDGET_ONCURRENTITEMCHANGED )
{
  QListWidgetSlots_connect_signal( "currentItemChanged(QListWidgetItem*,QListWidgetItem*)", "currentItemChanged(QListWidgetItem*,QListWidgetItem*)" );
}

HB_FUNC_STATIC( QLISTWIDGET_ONCURRENTROWCHANGED )
{
  QListWidgetSlots_connect_signal( "currentRowChanged(int)", "currentRowChanged(int)" );
}

HB_FUNC_STATIC( QLISTWIDGET_ONCURRENTTEXTCHANGED )
{
  QListWidgetSlots_connect_signal( "currentTextChanged(QString)", "currentTextChanged(QString)" );
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMACTIVATED )
{
  QListWidgetSlots_connect_signal( "itemActivated(QListWidgetItem*)", "itemActivated(QListWidgetItem*)" );
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMCHANGED )
{
  QListWidgetSlots_connect_signal( "itemChanged(QListWidgetItem*)", "itemChanged(QListWidgetItem*)" );
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMCLICKED )
{
  QListWidgetSlots_connect_signal( "itemClicked(QListWidgetItem*)", "itemClicked(QListWidgetItem*)" );
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMDOUBLECLICKED )
{
  QListWidgetSlots_connect_signal( "itemDoubleClicked(QListWidgetItem*)", "itemDoubleClicked(QListWidgetItem*)" );
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMENTERED )
{
  QListWidgetSlots_connect_signal( "itemEntered(QListWidgetItem*)", "itemEntered(QListWidgetItem*)" );
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMPRESSED )
{
  QListWidgetSlots_connect_signal( "itemPressed(QListWidgetItem*)", "itemPressed(QListWidgetItem*)" );
}

HB_FUNC_STATIC( QLISTWIDGET_ONITEMSELECTIONCHANGED )
{
  QListWidgetSlots_connect_signal( "itemSelectionChanged()", "itemSelectionChanged()" );
}

#pragma ENDDUMP
