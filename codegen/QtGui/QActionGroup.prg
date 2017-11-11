$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD actions
   METHOD addAction
   METHOD checkedAction
   METHOD isEnabled
   METHOD isExclusive
   METHOD isVisible
   METHOD removeAction
   METHOD setDisabled
   METHOD setEnabled
   METHOD setExclusive
   METHOD setVisible

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QActionGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QActionGroup ( QObject * parent )
*/
$constructor=|new|QObject *

$deleteMethod

/*
QList<QAction *> actions () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ACTIONS )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAction *> list = obj->actions ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QACTION" );
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
        hb_itemPutPtr( pItem, (QAction *) list[i] );
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
QAction * addAction ( QAction * action )
*/
$internalMethod=|QAction *|addAction,addAction1|QAction *

/*
QAction * addAction ( const QString & text )
*/
$internalMethod=|QAction *|addAction,addAction2|const QString &

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
$internalMethod=|QAction *|addAction,addAction3|const QIcon &,const QString &

//[1]QAction * addAction ( QAction * action )
//[2]QAction * addAction ( const QString & text )
//[3]QAction * addAction ( const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QACTIONGROUP_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QActionGroup_addAction1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QActionGroup_addAction2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QActionGroup_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * checkedAction () const
*/
$method=|QAction *|checkedAction|

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
bool isExclusive () const
*/
$method=|bool|isExclusive|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
void removeAction ( QAction * action )
*/
$method=|void|removeAction|QAction *

/*
void setDisabled ( bool b )
*/
$method=|void|setDisabled|bool

/*
void setEnabled ( bool )
*/
$method=|void|setEnabled|bool

/*
void setExclusive ( bool )
*/
$method=|void|setExclusive|bool

/*
void setVisible ( bool )
*/
$method=|void|setVisible|bool

#pragma ENDDUMP
