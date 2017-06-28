/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QUNDOCOMMAND
REQUEST QACTION
#endif

CLASS QUndoStack INHERIT QObject

   DATA self_destruction INIT .F.

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

#include <QUndoStack>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QUndoStack ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOSTACK_NEW )
{
  QUndoStack * o = new QUndoStack ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
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
    obj->beginMacro ( PQSTRING(1) );
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
    RBOOL( obj->canRedo () );
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
    RBOOL( obj->canUndo () );
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
    RINT( obj->cleanIndex () );
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
    obj->clear ();
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
    const QUndoCommand * ptr = obj->command ( PINT(1) );
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
    RINT( obj->count () );
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
    QAction * ptr = obj->createRedoAction ( PQOBJECT(1), OPQSTRING(2,QString()) );
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
    QAction * ptr = obj->createUndoAction ( PQOBJECT(1), OPQSTRING(2,QString()) );
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
    obj->endMacro ();
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
    RINT( obj->index () );
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
    RBOOL( obj->isActive () );
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
    RBOOL( obj->isClean () );
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
    RQSTRING( obj->redoText () );
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
    obj->setUndoLimit ( PINT(1) );
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
    RQSTRING( obj->text ( PINT(1) ) );
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
    RINT( obj->undoLimit () );
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
    RQSTRING( obj->undoText () );
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
    obj->redo ();
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
    obj->setActive ( OPBOOL(1,true) );
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
    obj->setClean ();
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
    obj->setIndex ( PINT(1) );
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
    obj->undo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
