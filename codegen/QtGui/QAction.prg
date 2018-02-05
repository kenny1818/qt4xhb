%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

#include <QMenu>

$prototype=QAction ( QObject * parent )
$internalConstructor=|new1|QObject *

$prototype=QAction ( const QString & text, QObject * parent )
$internalConstructor=|new2|const QString &,QObject *

$prototype=QAction ( const QIcon & icon, const QString & text, QObject * parent )
$internalConstructor=|new3|const QIcon &,const QString &,QObject *

//[1]QAction ( QObject * parent )
//[2]QAction ( const QString & text, QObject * parent )
//[3]QAction ( const QIcon & icon, const QString & text, QObject * parent )

HB_FUNC_STATIC( QACTION_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QAction_new1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QAction_new2();
  }
  else if( ISNUMPAR(3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) )
  {
    QAction_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QActionGroup * actionGroup () const
$method=|QActionGroup *|actionGroup|

$prototype=void activate ( ActionEvent event )
$method=|void|activate|QAction::ActionEvent

$prototype=QList<QGraphicsWidget *> associatedGraphicsWidgets () const
HB_FUNC_STATIC( QACTION_ASSOCIATEDGRAPHICSWIDGETS )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGraphicsWidget *> list = obj->associatedGraphicsWidgets ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSWIDGET" );
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

$prototype=QList<QWidget *> associatedWidgets () const
HB_FUNC_STATIC( QACTION_ASSOCIATEDWIDGETS )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QWidget *> list = obj->associatedWidgets ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWIDGET" );
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

$prototype=bool autoRepeat () const
$method=|bool|autoRepeat|

$prototype=QVariant data () const
$method=|QVariant|data|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=QString iconText () const
$method=|QString|iconText|

$prototype=bool isCheckable () const
$method=|bool|isCheckable|

$prototype=bool isChecked () const
$method=|bool|isChecked|

$prototype=bool isEnabled () const
$method=|bool|isEnabled|

$prototype=bool isIconVisibleInMenu () const
$method=|bool|isIconVisibleInMenu|

$prototype=bool isSeparator () const
$method=|bool|isSeparator|

$prototype=bool isVisible () const
$method=|bool|isVisible|

$prototype=QMenu * menu () const
$method=|QMenu *|menu|

$prototype=MenuRole menuRole () const
$method=|QAction::MenuRole|menuRole|

$prototype=QWidget * parentWidget () const
$method=|QWidget *|parentWidget|

$prototype=Priority priority () const
$method=|QAction::Priority|priority|

$prototype=void setActionGroup ( QActionGroup * group )
$method=|void|setActionGroup|QActionGroup *

$prototype=void setAutoRepeat ( bool )
$method=|void|setAutoRepeat|bool

$prototype=void setCheckable ( bool )
$method=|void|setCheckable|bool

$prototype=void setData ( const QVariant & userData )
$method=|void|setData|const QVariant &

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=void setIconText ( const QString & text )
$method=|void|setIconText|const QString &

$prototype=void setIconVisibleInMenu ( bool visible )
$method=|void|setIconVisibleInMenu|bool

$prototype=void setMenu ( QMenu * menu )
$method=|void|setMenu|QMenu *

$prototype=void setMenuRole ( MenuRole menuRole )
$method=|void|setMenuRole|QAction::MenuRole

$prototype=void setPriority ( Priority priority )
$method=|void|setPriority|QAction::Priority

$prototype=void setSeparator ( bool b )
$method=|void|setSeparator|bool

$prototype=void setShortcut ( const QKeySequence & shortcut )
$method=|void|setShortcut|const QKeySequence &

$prototype=void setShortcutContext ( Qt::ShortcutContext context )
$method=|void|setShortcutContext|Qt::ShortcutContext

$prototype=void setShortcuts ( const QList<QKeySequence> & shortcuts )
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

$prototype=void setShortcuts ( QKeySequence::StandardKey key )
$method=|void|setShortcuts,setShortcuts2|QKeySequence::StandardKey

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

$prototype=void setSoftKeyRole ( SoftKeyRole softKeyRole )
$method=|void|setSoftKeyRole|QAction::SoftKeyRole

$prototype=void setStatusTip ( const QString & statusTip )
$method=|void|setStatusTip|const QString &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setToolTip ( const QString & tip )
$method=|void|setToolTip|const QString &

$prototype=void setWhatsThis ( const QString & what )
$method=|void|setWhatsThis|const QString &

$prototype=QKeySequence shortcut () const
$method=|QKeySequence|shortcut|

$prototype=Qt::ShortcutContext shortcutContext () const
$method=|Qt::ShortcutContext|shortcutContext|

$prototype=QList<QKeySequence> shortcuts () const
HB_FUNC_STATIC( QACTION_SHORTCUTS )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QKeySequence> list = obj->shortcuts ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QKEYSEQUENCE" );
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

$prototype=bool showStatusText ( QWidget * widget = 0 )
$method=|bool|showStatusText|QWidget *=0

$prototype=SoftKeyRole softKeyRole () const
$method=|QAction::SoftKeyRole|softKeyRole|

$prototype=QString statusTip () const
$method=|QString|statusTip|

$prototype=QString text () const
$method=|QString|text|

$prototype=QString toolTip () const
$method=|QString|toolTip|

$prototype=QString whatsThis () const
$method=|QString|whatsThis|

$prototype=void hover ()
$method=|void|hover|

$prototype=void setChecked ( bool )
$method=|void|setChecked|bool

$prototype=void setDisabled ( bool b )
$method=|void|setDisabled|bool

$prototype=void setEnabled ( bool )
$method=|void|setEnabled|bool

$prototype=void setVisible ( bool )
$method=|void|setVisible|bool

$prototype=void toggle ()
$method=|void|toggle|

$prototype=void trigger ()
$method=|void|trigger|

#pragma ENDDUMP
