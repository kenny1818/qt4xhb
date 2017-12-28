$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTREEWIDGETITEM
REQUEST QWIDGET
REQUEST QRECT
#endif

CLASS QTreeWidget INHERIT QTreeView

   METHOD new
   METHOD delete
   METHOD addTopLevelItem
   METHOD addTopLevelItems
   METHOD closePersistentEditor
   METHOD columnCount
   METHOD currentColumn
   METHOD currentItem
   METHOD editItem
   METHOD findItems
   METHOD headerItem
   METHOD indexOfTopLevelItem
   METHOD insertTopLevelItem
   METHOD insertTopLevelItems
   METHOD invisibleRootItem
   METHOD isFirstItemColumnSpanned
   METHOD itemAbove
   METHOD itemAt
   METHOD itemBelow
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD selectedItems
   METHOD setColumnCount
   METHOD setCurrentItem
   METHOD setFirstItemColumnSpanned
   METHOD setHeaderItem
   METHOD setHeaderLabel
   METHOD setHeaderLabels
   METHOD setItemWidget
   METHOD sortColumn
   METHOD sortItems
   METHOD takeTopLevelItem
   METHOD topLevelItem
   METHOD topLevelItemCount
   METHOD visualItemRect
   METHOD setSelectionModel
   METHOD clear
   METHOD collapseItem
   METHOD expandItem
   METHOD scrollToItem

   METHOD onCurrentItemChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemCollapsed
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemExpanded
   METHOD onItemPressed
   METHOD onItemSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTreeWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTreeWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void addTopLevelItem ( QTreeWidgetItem * item )
$method=|void|addTopLevelItem|QTreeWidgetItem *

$prototype=void addTopLevelItems ( const QList<QTreeWidgetItem *> & items )
HB_FUNC_STATIC( QTREEWIDGET_ADDTOPLEVELITEMS )
{
  QTreeWidget * obj = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QTreeWidgetItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->addTopLevelItems ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void closePersistentEditor ( QTreeWidgetItem * item, int column = 0 )
$method=|void|closePersistentEditor|QTreeWidgetItem *,int=0

$prototype=int columnCount () const
$method=|int|columnCount|

$prototype=int currentColumn () const
$method=|int|currentColumn|

$prototype=QTreeWidgetItem * currentItem () const
$method=|QTreeWidgetItem *|currentItem|

$prototype=void editItem ( QTreeWidgetItem * item, int column = 0 )
$method=|void|editItem|QTreeWidgetItem *,int=0

$prototype=QList<QTreeWidgetItem *> findItems ( const QString & text, Qt::MatchFlags flags, int column = 0 ) const
HB_FUNC_STATIC( QTREEWIDGET_FINDITEMS )
{
  QTreeWidget * obj = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = hb_parni(2);
    QList<QTreeWidgetItem *> list = obj->findItems ( PQSTRING(1), (Qt::MatchFlags) par2, OPINT(3,0) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QTREEWIDGETITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QTreeWidgetItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QTreeWidgetItem *  headerItem () const
$method=|QTreeWidgetItem *|headerItem|

$prototype=int indexOfTopLevelItem ( QTreeWidgetItem * item ) const
$method=|int|indexOfTopLevelItem|QTreeWidgetItem *

$prototype=void insertTopLevelItem ( int index, QTreeWidgetItem * item )
$method=|void|insertTopLevelItem|int,QTreeWidgetItem *

$prototype=void insertTopLevelItems ( int index, const QList<QTreeWidgetItem *> & items )
HB_FUNC_STATIC( QTREEWIDGET_INSERTTOPLEVELITEMS )
{
  QTreeWidget * obj = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QTreeWidgetItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertTopLevelItems ( PINT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=QTreeWidgetItem * invisibleRootItem () const
$method=|QTreeWidgetItem *|invisibleRootItem|

$prototype=bool isFirstItemColumnSpanned ( const QTreeWidgetItem * item ) const
$method=|bool|isFirstItemColumnSpanned|const QTreeWidgetItem *

$prototype=QTreeWidgetItem * itemAbove ( const QTreeWidgetItem * item ) const
$method=|QTreeWidgetItem *|itemAbove|const QTreeWidgetItem *

$prototype=QTreeWidgetItem * itemAt ( const QPoint & p ) const
$internalMethod=|QTreeWidgetItem *|itemAt,itemAt1|const QPoint &

$prototype=QTreeWidgetItem * itemAt ( int x, int y ) const
$internalMethod=|QTreeWidgetItem *|itemAt,itemAt2|int,int

//[1]QTreeWidgetItem * itemAt ( const QPoint & p ) const
//[2]QTreeWidgetItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QTREEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTreeWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTreeWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTreeWidgetItem *  itemBelow ( const QTreeWidgetItem * item ) const
$method=|QTreeWidgetItem *|itemBelow|const QTreeWidgetItem *

$prototype=QWidget * itemWidget ( QTreeWidgetItem * item, int column ) const
$method=|QWidget *|itemWidget|QTreeWidgetItem *,int

$prototype=void openPersistentEditor ( QTreeWidgetItem * item, int column = 0 )
$method=|void|openPersistentEditor|QTreeWidgetItem *,int=0

$prototype=void removeItemWidget ( QTreeWidgetItem * item, int column )
$method=|void|removeItemWidget|QTreeWidgetItem *,int

$prototype=QList<QTreeWidgetItem *> selectedItems () const
HB_FUNC_STATIC( QTREEWIDGET_SELECTEDITEMS )
{
  QTreeWidget * obj = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QTreeWidgetItem *> list = obj->selectedItems ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QTREEWIDGETITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QTreeWidgetItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=void setColumnCount ( int columns )
$method=|void|setColumnCount|int

$prototype=void setCurrentItem ( QTreeWidgetItem * item )
$internalMethod=|void|setCurrentItem,setCurrentItem1|QTreeWidgetItem *

$prototype=void setCurrentItem ( QTreeWidgetItem * item, int column )
$internalMethod=|void|setCurrentItem,setCurrentItem2|QTreeWidgetItem *,int

$prototype=void setCurrentItem ( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentItem,setCurrentItem3|QTreeWidgetItem *,int,QItemSelectionModel::SelectionFlags

//[1]void setCurrentItem ( QTreeWidgetItem * item )
//[2]void setCurrentItem ( QTreeWidgetItem * item, int column )
//[3]void setCurrentItem ( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTREEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
  {
    QTreeWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && ISNUM(2) )
  {
    QTreeWidget_setCurrentItem2();
  }
  else if( ISNUMPAR(3) && ISQTREEWIDGETITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    QTreeWidget_setCurrentItem3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setFirstItemColumnSpanned ( const QTreeWidgetItem * item, bool span )
$method=|void|setFirstItemColumnSpanned|const QTreeWidgetItem *,bool

$prototype=void setHeaderItem ( QTreeWidgetItem * item )
$method=|void|setHeaderItem|QTreeWidgetItem *

$prototype=void setHeaderLabel ( const QString & label )
$method=|void|setHeaderLabel|const QString &

$prototype=void setHeaderLabels ( const QStringList & labels )
$method=|void|setHeaderLabels|const QStringList &

$prototype=void setItemWidget ( QTreeWidgetItem * item, int column, QWidget * widget )
$method=|void|setItemWidget|QTreeWidgetItem *,int,QWidget *

$prototype=int sortColumn () const
$method=|int|sortColumn|

$prototype=void sortItems ( int column, Qt::SortOrder order )
$method=|void|sortItems|int,Qt::SortOrder

$prototype=QTreeWidgetItem *  takeTopLevelItem ( int index )
$method=|QTreeWidgetItem *|takeTopLevelItem|int

$prototype=QTreeWidgetItem *  topLevelItem ( int index ) const
$method=|QTreeWidgetItem *|topLevelItem|int

$prototype=int topLevelItemCount () const
$method=|int|topLevelItemCount|

$prototype=QRect visualItemRect ( const QTreeWidgetItem * item ) const
$method=|QRect|visualItemRect|const QTreeWidgetItem *

$prototype=virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototype=void clear ()
$method=|void|clear|

$prototype=void collapseItem ( const QTreeWidgetItem * item )
$method=|void|collapseItem|const QTreeWidgetItem *

$prototype=void expandItem ( const QTreeWidgetItem * item )
$method=|void|expandItem|const QTreeWidgetItem *

$prototype=void scrollToItem ( const QTreeWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
$method=|void|scrollToItem|const QTreeWidgetItem *,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

#pragma ENDDUMP
