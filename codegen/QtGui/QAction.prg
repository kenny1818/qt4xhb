$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTIONGROUP
REQUEST QGRAPHICSWIDGET
REQUEST QWIDGET
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QMENU
REQUEST QKEYSEQUENCE
#endif

CLASS QAction INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD actionGroup
   METHOD activate
   METHOD associatedGraphicsWidgets
   METHOD associatedWidgets
   METHOD autoRepeat
   METHOD data
   METHOD font
   METHOD icon
   METHOD iconText
   METHOD isCheckable
   METHOD isChecked
   METHOD isEnabled
   METHOD isIconVisibleInMenu
   METHOD isSeparator
   METHOD isVisible
   METHOD menu
   METHOD menuRole
   METHOD parentWidget
   METHOD priority
   METHOD setActionGroup
   METHOD setAutoRepeat
   METHOD setCheckable
   METHOD setData
   METHOD setFont
   METHOD setIcon
   METHOD setIconText
   METHOD setIconVisibleInMenu
   METHOD setMenu
   METHOD setMenuRole
   METHOD setPriority
   METHOD setSeparator
   METHOD setShortcut
   METHOD setShortcutContext
   METHOD setShortcuts1
   METHOD setShortcuts2
   METHOD setShortCuts
   METHOD setSoftKeyRole
   METHOD setStatusTip
   METHOD setText
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD shortcut
   METHOD shortcutContext
   METHOD shortcuts
   METHOD showStatusText
   METHOD softKeyRole
   METHOD statusTip
   METHOD text
   METHOD toolTip
   METHOD whatsThis
   METHOD hover
   METHOD setChecked
   METHOD setDisabled
   METHOD setEnabled
   METHOD setVisible
   METHOD toggle
   METHOD trigger

   METHOD onChanged
   METHOD onHovered
   METHOD onToggled
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAction>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAction ( QObject * parent )
*/
$constructor=|new1|QObject *

/*
QAction ( const QString & text, QObject * parent )
*/
$constructor=|new2|const QString &,QObject *

/*
QAction ( const QIcon & icon, const QString & text, QObject * parent )
*/
$constructor=|new3|const QIcon &,const QString &,QObject *

//[1]QAction ( QObject * parent )
//[2]QAction ( const QString & text, QObject * parent )
//[3]QAction ( const QIcon & icon, const QString & text, QObject * parent )

HB_FUNC_STATIC( QACTION_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QACTION_NEW1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QACTION_NEW2 );
  }
  else if( ISNUMPAR(3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) )
  {
    HB_FUNC_EXEC( QACTION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QActionGroup * actionGroup () const
*/
$method=|QActionGroup *|actionGroup|

/*
void activate ( ActionEvent event )
*/
$method=|void|activate|QAction::ActionEvent

/*
QList<QGraphicsWidget *> associatedGraphicsWidgets () const
*/
HB_FUNC_STATIC( QACTION_ASSOCIATEDGRAPHICSWIDGETS )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGraphicsWidget *> list = obj->associatedGraphicsWidgets ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSWIDGET" );
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
        hb_itemPutPtr( pItem, (QGraphicsWidget *) list[i] );
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
QList<QWidget *> associatedWidgets () const
*/
HB_FUNC_STATIC( QACTION_ASSOCIATEDWIDGETS )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QWidget *> list = obj->associatedWidgets ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QWIDGET" );
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
        hb_itemPutPtr( pItem, (QWidget *) list[i] );
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
bool autoRepeat () const
*/
$method=|bool|autoRepeat|

/*
QVariant data () const
*/
$method=|QVariant|data|

/*
QFont font () const
*/
$method=|QFont|font|

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
QString iconText () const
*/
$method=|QString|iconText|

/*
bool isCheckable () const
*/
$method=|bool|isCheckable|

/*
bool isChecked () const
*/
$method=|bool|isChecked|

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
bool isIconVisibleInMenu () const
*/
$method=|bool|isIconVisibleInMenu|

/*
bool isSeparator () const
*/
$method=|bool|isSeparator|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
QMenu * menu () const
*/
$method=|QMenu *|menu|

/*
MenuRole menuRole () const
*/
$method=|QAction::MenuRole|menuRole|

/*
QWidget * parentWidget () const
*/
$method=|QWidget *|parentWidget|

/*
Priority priority () const
*/
$method=|QAction::Priority|priority|

/*
void setActionGroup ( QActionGroup * group )
*/
$method=|void|setActionGroup|QActionGroup *

/*
void setAutoRepeat ( bool )
*/
$method=|void|setAutoRepeat|bool

/*
void setCheckable ( bool )
*/
$method=|void|setCheckable|bool

/*
void setData ( const QVariant & userData )
*/
$method=|void|setData|const QVariant &

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setIcon ( const QIcon & icon )
*/
$method=|void|setIcon|const QIcon &

/*
void setIconText ( const QString & text )
*/
$method=|void|setIconText|const QString &

/*
void setIconVisibleInMenu ( bool visible )
*/
$method=|void|setIconVisibleInMenu|bool

/*
void setMenu ( QMenu * menu )
*/
$method=|void|setMenu|QMenu *

/*
void setMenuRole ( MenuRole menuRole )
*/
$method=|void|setMenuRole|QAction::MenuRole

/*
void setPriority ( Priority priority )
*/
$method=|void|setPriority|QAction::Priority

/*
void setSeparator ( bool b )
*/
$method=|void|setSeparator|bool

/*
void setShortcut ( const QKeySequence & shortcut )
*/
$method=|void|setShortcut|const QKeySequence &

/*
void setShortcutContext ( Qt::ShortcutContext context )
*/
$method=|void|setShortcutContext|Qt::ShortcutContext

/*
void setShortcuts ( const QList<QKeySequence> & shortcuts )
*/
HB_FUNC_STATIC( QACTION_SETSHORTCUTS1 )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QKeySequence> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setShortcuts ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcuts ( QKeySequence::StandardKey key )
*/
$method=|void|setShortcuts|QKeySequence::StandardKey

//[1]void setShortcuts ( const QList<QKeySequence> & shortcuts )
//[2]void setShortcuts ( QKeySequence::StandardKey key )

HB_FUNC_STATIC( QACTION_SETSHORTCUTS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QACTION_SETSHORTCUTS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QACTION_SETSHORTCUTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSoftKeyRole ( SoftKeyRole softKeyRole )
*/
$method=|void|setSoftKeyRole|QAction::SoftKeyRole

/*
void setStatusTip ( const QString & statusTip )
*/
$method=|void|setStatusTip|const QString &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setToolTip ( const QString & tip )
*/
$method=|void|setToolTip|const QString &

/*
void setWhatsThis ( const QString & what )
*/
$method=|void|setWhatsThis|const QString &

/*
QKeySequence shortcut () const
*/
$method=|QKeySequence|shortcut|

/*
Qt::ShortcutContext shortcutContext () const
*/
$method=|Qt::ShortcutContext|shortcutContext|

/*
QList<QKeySequence> shortcuts () const
*/
HB_FUNC_STATIC( QACTION_SHORTCUTS )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QKeySequence> list = obj->shortcuts ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QKEYSEQUENCE" );
    #else
    pDynSym = hb_dynsymFindName( "QKEYSEQUENCE" );
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
        hb_itemPutPtr( pItem, (QKeySequence *) new QKeySequence ( list[i] ) );
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
    hb_itemReturnRelease(pArray);
  }
}

/*
bool showStatusText ( QWidget * widget = 0 )
*/
$method=|bool|showStatusText|QWidget *=0

/*
SoftKeyRole softKeyRole () const
*/
$method=|QAction::SoftKeyRole|softKeyRole|

/*
QString statusTip () const
*/
$method=|QString|statusTip|

/*
QString text () const
*/
$method=|QString|text|

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
QString whatsThis () const
*/
$method=|QString|whatsThis|

/*
void hover ()
*/
$method=|void|hover|

/*
void setChecked ( bool )
*/
$method=|void|setChecked|bool

/*
void setDisabled ( bool b )
*/
$method=|void|setDisabled|bool

/*
void setEnabled ( bool )
*/
$method=|void|setEnabled|bool

/*
void setVisible ( bool )
*/
$method=|void|setVisible|bool

/*
void toggle ()
*/
$method=|void|toggle|

/*
void trigger ()
*/
$method=|void|trigger|

#pragma ENDDUMP
