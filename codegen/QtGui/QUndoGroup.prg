$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QUNDOSTACK
REQUEST QACTION
#endif

CLASS QUndoGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeStack
   METHOD addStack
   METHOD canRedo
   METHOD canUndo
   METHOD createRedoAction
   METHOD createUndoAction
   METHOD isClean
   METHOD redoText
   METHOD removeStack
   METHOD stacks
   METHOD undoText
   METHOD redo
   METHOD setActiveStack
   METHOD undo

   METHOD onActiveStackChanged
   METHOD onCanRedoChanged
   METHOD onCanUndoChanged
   METHOD onCleanChanged
   METHOD onIndexChanged
   METHOD onRedoTextChanged
   METHOD onUndoTextChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QUndoGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QUndoGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOGROUP_NEW )
{
  QUndoGroup * o = new QUndoGroup ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QUndoStack * activeStack () const
*/
$method=|QUndoStack *|activeStack|

/*
void addStack ( QUndoStack * stack )
*/
$method=|void|addStack|QUndoStack *

/*
bool canRedo () const
*/
$method=|bool|canRedo|

/*
bool canUndo () const
*/
$method=|bool|canUndo|

/*
QAction * createRedoAction ( QObject * parent, const QString & prefix = QString() ) const
*/
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

/*
QAction * createUndoAction ( QObject * parent, const QString & prefix = QString() ) const
*/
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

/*
bool isClean () const
*/
$method=|bool|isClean|

/*
QString redoText () const
*/
$method=|QString|redoText|

/*
void removeStack ( QUndoStack * stack )
*/
$method=|void|removeStack|QUndoStack *

/*
QList<QUndoStack *> stacks () const
*/
HB_FUNC_STATIC( QUNDOGROUP_STACKS )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QUndoStack *> list = obj->stacks ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QUNDOSTACK" );
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
        hb_itemPutPtr( pItem, (QUndoStack *) list[i] );
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
QString undoText () const
*/
$method=|QString|undoText|

/*
void redo ()
*/
$method=|void|redo|

/*
void setActiveStack ( QUndoStack * stack )
*/
$method=|void|setActiveStack|QUndoStack *

/*
void undo ()
*/
$method=|void|undo|

#pragma ENDDUMP
