/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QUNDOCOMMAND
REQUEST QACTION

CLASS QUndoStack INHERIT QObject

   DATA class_id INIT Class_Id_QUndoStack
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD beginMacro
   METHOD canRedo
   METHOD canUndo
   METHOD cleanIndex
   METHOD clear
   METHOD command
   METHOD count
   METHOD createRedoAction
   METHOD createUndoAction
   METHOD endMacro
   METHOD index
   METHOD isActive
   METHOD isClean
   METHOD push
   METHOD redoText
   METHOD setUndoLimit
   METHOD text
   METHOD undoLimit
   METHOD undoText
   METHOD redo
   METHOD setActive
   METHOD setClean
   METHOD setIndex
   METHOD undo
   METHOD onCanRedoChanged
   METHOD onCanUndoChanged
   METHOD onCleanChanged
   METHOD onIndexChanged
   METHOD onRedoTextChanged
   METHOD onUndoTextChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUndoStack
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QUndoStack>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QUndoStack ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOSTACK_NEW )
{
  QUndoStack * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUndoStack ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUndoStack *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QUNDOSTACK_DELETE )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void beginMacro ( const QString & text )
*/
HB_FUNC_STATIC( QUNDOSTACK_BEGINMACRO )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->beginMacro ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool canRedo () const
*/
HB_FUNC_STATIC( QUNDOSTACK_CANREDO )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canRedo (  ) );
  }
}


/*
bool canUndo () const
*/
HB_FUNC_STATIC( QUNDOSTACK_CANUNDO )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canUndo (  ) );
  }
}


/*
int cleanIndex () const
*/
HB_FUNC_STATIC( QUNDOSTACK_CLEANINDEX )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->cleanIndex (  );
    hb_retni( i );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QUNDOSTACK_CLEAR )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QUndoCommand * command ( int index ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_COMMAND )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QUndoCommand * ptr = obj->command ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QUNDOCOMMAND" );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QUNDOSTACK_COUNT )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
QAction * createRedoAction ( QObject * parent, const QString & prefix = QString() ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_CREATEREDOACTION )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QAction * ptr = obj->createRedoAction ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * createUndoAction ( QObject * parent, const QString & prefix = QString() ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_CREATEUNDOACTION )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QAction * ptr = obj->createUndoAction ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void endMacro ()
*/
HB_FUNC_STATIC( QUNDOSTACK_ENDMACRO )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endMacro (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int index () const
*/
HB_FUNC_STATIC( QUNDOSTACK_INDEX )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->index (  );
    hb_retni( i );
  }
}


/*
bool isActive () const
*/
HB_FUNC_STATIC( QUNDOSTACK_ISACTIVE )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
bool isClean () const
*/
HB_FUNC_STATIC( QUNDOSTACK_ISCLEAN )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isClean (  ) );
  }
}


/*
void push ( QUndoCommand * cmd )
*/
HB_FUNC_STATIC( QUNDOSTACK_PUSH )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUndoCommand * par1 = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->push ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString redoText () const
*/
HB_FUNC_STATIC( QUNDOSTACK_REDOTEXT )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->redoText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setUndoLimit ( int limit )
*/
HB_FUNC_STATIC( QUNDOSTACK_SETUNDOLIMIT )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setUndoLimit ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text ( int idx ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_TEXT )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->text ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int undoLimit () const
*/
HB_FUNC_STATIC( QUNDOSTACK_UNDOLIMIT )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->undoLimit (  );
    hb_retni( i );
  }
}


/*
QString undoText () const
*/
HB_FUNC_STATIC( QUNDOSTACK_UNDOTEXT )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->undoText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void redo ()
*/
HB_FUNC_STATIC( QUNDOSTACK_REDO )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->redo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setActive ( bool active = true )
*/
HB_FUNC_STATIC( QUNDOSTACK_SETACTIVE )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = ISNIL(1)? true : hb_parl(1);
    obj->setActive ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setClean ()
*/
HB_FUNC_STATIC( QUNDOSTACK_SETCLEAN )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setClean (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndex ( int idx )
*/
HB_FUNC_STATIC( QUNDOSTACK_SETINDEX )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIndex ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void undo ()
*/
HB_FUNC_STATIC( QUNDOSTACK_UNDO )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->undo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
