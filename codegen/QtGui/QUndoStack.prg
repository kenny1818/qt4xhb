$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QUNDOCOMMAND
REQUEST QACTION
#endif

CLASS QUndoStack INHERIT QObject

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

$destructor

#pragma BEGINDUMP

#include <QUndoStack>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QUndoStack ( QObject * parent = 0 )
HB_FUNC_STATIC( QUNDOSTACK_NEW )
{
  QUndoStack * o = new QUndoStack ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=void beginMacro ( const QString & text )
$method=|void|beginMacro|const QString &

$prototype=bool canRedo () const
$method=|bool|canRedo|

$prototype=bool canUndo () const
$method=|bool|canUndo|

$prototype=int cleanIndex () const
$method=|int|cleanIndex|

$prototype=void clear ()
$method=|void|clear|

$prototype=const QUndoCommand * command ( int index ) const
$method=|const QUndoCommand *|command|int

$prototype=int count () const
$method=|int|count|

$prototype=QAction * createRedoAction ( QObject * parent, const QString & prefix = QString() ) const
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

$prototype=QAction * createUndoAction ( QObject * parent, const QString & prefix = QString() ) const
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

$prototype=void endMacro ()
$method=|void|endMacro|

$prototype=int index () const
$method=|int|index|

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=bool isClean () const
$method=|bool|isClean|

$prototype=void push ( QUndoCommand * cmd )
$method=|void|push|QUndoCommand *

$prototype=QString redoText () const
$method=|QString|redoText|

$prototype=void setUndoLimit ( int limit )
$method=|void|setUndoLimit|int

$prototype=QString text ( int idx ) const
$method=|QString|text|int

$prototype=int undoLimit () const
$method=|int|undoLimit|

$prototype=QString undoText () const
$method=|QString|undoText|

$prototype=void redo ()
$method=|void|redo|

$prototype=void setActive ( bool active = true )
$method=|void|setActive|bool=true

$prototype=void setClean ()
$method=|void|setClean|

$prototype=void setIndex ( int idx )
$method=|void|setIndex|int

$prototype=void undo ()
$method=|void|undo|

#pragma ENDDUMP
