/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QAction
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAction>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAction ( QObject * parent )
*/
HB_FUNC_STATIC( QACTION_NEW1 )
{
  QAction * o = new QAction ( PQOBJECT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QAction ( const QString & text, QObject * parent )
*/
HB_FUNC_STATIC( QACTION_NEW2 )
{
  QAction * o = new QAction ( PQSTRING(1), PQOBJECT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QAction ( const QIcon & icon, const QString & text, QObject * parent )
*/
HB_FUNC_STATIC( QACTION_NEW3 )
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  QAction * o = new QAction ( par1, PQSTRING(2), PQOBJECT(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

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

HB_FUNC_STATIC( QACTION_DELETE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QActionGroup * actionGroup () const
*/
HB_FUNC_STATIC( QACTION_ACTIONGROUP )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QActionGroup * ptr = obj->actionGroup ();
    _qt4xhb_createReturnClass ( ptr, "QACTIONGROUP" );
  }
}

/*
void activate ( ActionEvent event )
*/
HB_FUNC_STATIC( QACTION_ACTIVATE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->activate ( (QAction::ActionEvent) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QACTION_AUTOREPEAT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->autoRepeat () );
  }
}

/*
QVariant data () const
*/
HB_FUNC_STATIC( QACTION_DATA )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QACTION_FONT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QACTION_ICON )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
QString iconText () const
*/
HB_FUNC_STATIC( QACTION_ICONTEXT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->iconText () );
  }
}

/*
bool isCheckable () const
*/
HB_FUNC_STATIC( QACTION_ISCHECKABLE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCheckable () );
  }
}

/*
bool isChecked () const
*/
HB_FUNC_STATIC( QACTION_ISCHECKED )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isChecked () );
  }
}

/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QACTION_ISENABLED )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEnabled () );
  }
}

/*
bool isIconVisibleInMenu () const
*/
HB_FUNC_STATIC( QACTION_ISICONVISIBLEINMENU )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isIconVisibleInMenu () );
  }
}

/*
bool isSeparator () const
*/
HB_FUNC_STATIC( QACTION_ISSEPARATOR )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSeparator () );
  }
}

/*
bool isVisible () const
*/
HB_FUNC_STATIC( QACTION_ISVISIBLE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
}

/*
QMenu * menu () const
*/
HB_FUNC_STATIC( QACTION_MENU )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->menu ();
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
MenuRole menuRole () const
*/
HB_FUNC_STATIC( QACTION_MENUROLE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->menuRole () );
  }
}

/*
QWidget * parentWidget () const
*/
HB_FUNC_STATIC( QACTION_PARENTWIDGET )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->parentWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
Priority priority () const
*/
HB_FUNC_STATIC( QACTION_PRIORITY )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->priority () );
  }
}

/*
void setActionGroup ( QActionGroup * group )
*/
HB_FUNC_STATIC( QACTION_SETACTIONGROUP )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QActionGroup * par1 = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setActionGroup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoRepeat ( bool )
*/
HB_FUNC_STATIC( QACTION_SETAUTOREPEAT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoRepeat ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCheckable ( bool )
*/
HB_FUNC_STATIC( QACTION_SETCHECKABLE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCheckable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setData ( const QVariant & userData )
*/
HB_FUNC_STATIC( QACTION_SETDATA )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QACTION_SETFONT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QACTION_SETICON )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconText ( const QString & text )
*/
HB_FUNC_STATIC( QACTION_SETICONTEXT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIconText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconVisibleInMenu ( bool visible )
*/
HB_FUNC_STATIC( QACTION_SETICONVISIBLEINMENU )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIconVisibleInMenu ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QACTION_SETMENU )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMenu ( PQMENU(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenuRole ( MenuRole menuRole )
*/
HB_FUNC_STATIC( QACTION_SETMENUROLE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMenuRole ( (QAction::MenuRole) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPriority ( Priority priority )
*/
HB_FUNC_STATIC( QACTION_SETPRIORITY )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPriority ( (QAction::Priority) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSeparator ( bool b )
*/
HB_FUNC_STATIC( QACTION_SETSEPARATOR )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSeparator ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcut ( const QKeySequence & shortcut )
*/
HB_FUNC_STATIC( QACTION_SETSHORTCUT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setShortcut ( *PQKEYSEQUENCE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcutContext ( Qt::ShortcutContext context )
*/
HB_FUNC_STATIC( QACTION_SETSHORTCUTCONTEXT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setShortcutContext ( (Qt::ShortcutContext) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QACTION_SETSHORTCUTS2 )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setShortcuts ( (QKeySequence::StandardKey) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
void setSoftKeyRole ( SoftKeyRole softKeyRole )
*/
HB_FUNC_STATIC( QACTION_SETSOFTKEYROLE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSoftKeyRole ( (QAction::SoftKeyRole) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStatusTip ( const QString & statusTip )
*/
HB_FUNC_STATIC( QACTION_SETSTATUSTIP )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStatusTip ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QACTION_SETTEXT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip ( const QString & tip )
*/
HB_FUNC_STATIC( QACTION_SETTOOLTIP )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setToolTip ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWhatsThis ( const QString & what )
*/
HB_FUNC_STATIC( QACTION_SETWHATSTHIS )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWhatsThis ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QKeySequence shortcut () const
*/
HB_FUNC_STATIC( QACTION_SHORTCUT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->shortcut () );
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
}

/*
Qt::ShortcutContext shortcutContext () const
*/
HB_FUNC_STATIC( QACTION_SHORTCUTCONTEXT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->shortcutContext () );
  }
}

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
HB_FUNC_STATIC( QACTION_SHOWSTATUSTEXT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->showStatusText ( OPQWIDGET(1,0) ) );
  }
}

/*
SoftKeyRole softKeyRole () const
*/
HB_FUNC_STATIC( QACTION_SOFTKEYROLE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->softKeyRole () );
  }
}

/*
QString statusTip () const
*/
HB_FUNC_STATIC( QACTION_STATUSTIP )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->statusTip () );
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QACTION_TEXT )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QACTION_TOOLTIP )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toolTip () );
  }
}

/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QACTION_WHATSTHIS )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->whatsThis () );
  }
}

/*
void hover ()
*/
HB_FUNC_STATIC( QACTION_HOVER )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->hover ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setChecked ( bool )
*/
HB_FUNC_STATIC( QACTION_SETCHECKED )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setChecked ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDisabled ( bool b )
*/
HB_FUNC_STATIC( QACTION_SETDISABLED )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDisabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEnabled ( bool )
*/
HB_FUNC_STATIC( QACTION_SETENABLED )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible ( bool )
*/
HB_FUNC_STATIC( QACTION_SETVISIBLE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toggle ()
*/
HB_FUNC_STATIC( QACTION_TOGGLE )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toggle ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void trigger ()
*/
HB_FUNC_STATIC( QACTION_TRIGGER )
{
  QAction * obj = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->trigger ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
