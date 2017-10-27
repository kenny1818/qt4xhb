$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMDISUBWINDOW
REQUEST QBRUSH
REQUEST QSIZE
#endif

CLASS QMdiArea INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD activationOrder
   METHOD activeSubWindow
   METHOD addSubWindow
   METHOD background
   METHOD currentSubWindow
   METHOD documentMode
   METHOD removeSubWindow
   METHOD setActivationOrder
   METHOD setBackground
   METHOD setDocumentMode
   METHOD setOption
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setViewMode
   METHOD subWindowList
   METHOD tabPosition
   METHOD tabShape
   METHOD testOption
   METHOD viewMode
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD activateNextSubWindow
   METHOD activatePreviousSubWindow
   METHOD cascadeSubWindows
   METHOD closeActiveSubWindow
   METHOD closeAllSubWindows
   METHOD setActiveSubWindow
   METHOD tileSubWindows

   METHOD onSubWindowActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMdiArea>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMdiArea ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMDIAREA_NEW )
{
  QMdiArea * o = new QMdiArea ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
WindowOrder activationOrder () const
*/
$method=|QMdiArea::WindowOrder|activationOrder|

/*
QMdiSubWindow * activeSubWindow () const
*/
$method=|QMdiSubWindow *|activeSubWindow|

/*
QMdiSubWindow * addSubWindow ( QWidget * widget, Qt::WindowFlags windowFlags = 0 )
*/
$method=|QMdiSubWindow *|addSubWindow|QWidget *,Qt::WindowFlags=0

/*
QBrush background () const
*/
$method=|QBrush|background|

/*
QMdiSubWindow * currentSubWindow () const
*/
$method=|QMdiSubWindow *|currentSubWindow|

/*
bool documentMode () const
*/
$method=|bool|documentMode|

/*
void removeSubWindow ( QWidget * widget )
*/
$method=|void|removeSubWindow|QWidget *

/*
void setActivationOrder ( WindowOrder order )
*/
$method=|void|setActivationOrder|QMdiArea::WindowOrder

/*
void setBackground ( const QBrush & background )
*/
$method=|void|setBackground|const QBrush &

/*
void setDocumentMode ( bool enabled )
*/
$method=|void|setDocumentMode|bool

/*
void setOption ( AreaOption option, bool on = true )
*/
$method=|void|setOption|QMdiArea::AreaOption,bool=true

/*
void setTabPosition ( QTabWidget::TabPosition position )
*/
$method=|void|setTabPosition|QTabWidget::TabPosition

/*
void setTabShape ( QTabWidget::TabShape shape )
*/
$method=|void|setTabShape|QTabWidget::TabShape

/*
void setViewMode ( ViewMode mode )
*/
$method=|void|setViewMode|QMdiArea::ViewMode

/*
QList<QMdiSubWindow *> subWindowList ( WindowOrder order = CreationOrder ) const
*/
HB_FUNC_STATIC( QMDIAREA_SUBWINDOWLIST )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QMdiArea::CreationOrder : hb_parni(1);
    QList<QMdiSubWindow *> list = obj->subWindowList ( (QMdiArea::WindowOrder) par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMDISUBWINDOW" );
    #else
    pDynSym = hb_dynsymFindName( "QMDISUBWINDOW" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QMdiSubWindow *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QTabWidget::TabPosition tabPosition () const
*/
$method=|QTabWidget::TabPosition|tabPosition|

/*
QTabWidget::TabShape tabShape () const
*/
$method=|QTabWidget::TabShape|tabShape|

/*
bool testOption ( AreaOption option ) const
*/
$method=|bool|testOption|QMdiArea::AreaOption

/*
ViewMode viewMode () const
*/
$method=|QMdiArea::ViewMode|viewMode|

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
void activateNextSubWindow ()
*/
$method=|void|activateNextSubWindow|

/*
void activatePreviousSubWindow ()
*/
$method=|void|activatePreviousSubWindow|

/*
void cascadeSubWindows ()
*/
$method=|void|cascadeSubWindows|

/*
void closeActiveSubWindow ()
*/
$method=|void|closeActiveSubWindow|

/*
void closeAllSubWindows ()
*/
$method=|void|closeAllSubWindows|

/*
void setActiveSubWindow ( QMdiSubWindow * window )
*/
$method=|void|setActiveSubWindow|QMdiSubWindow *

/*
void tileSubWindows ()
*/
$method=|void|tileSubWindows|

#pragma ENDDUMP
