$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QTOOLBAR
REQUEST QMAINWINDOW
REQUEST QWIDGET
#endif

CLASS QScriptEngineDebugger INHERIT QObject

   METHOD new
   METHOD delete
   METHOD action
   METHOD attachTo
   METHOD autoShowStandardWindow
   METHOD createStandardMenu
   METHOD createStandardToolBar
   METHOD detach
   METHOD setAutoShowStandardWindow
   METHOD standardWindow
   METHOD state
   METHOD widget

   METHOD onEvaluationResumed
   METHOD onEvaluationSuspended

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptEngineDebugger>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QScriptEngineDebugger ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QAction * action ( DebuggerAction action ) const
$method=|QAction *|action|QScriptEngineDebugger::DebuggerAction

$prototype=void attachTo ( QScriptEngine * engine )
$method=|void|attachTo|QScriptEngine *

$prototype=bool autoShowStandardWindow () const
$method=|bool|autoShowStandardWindow|

$prototype=QMenu * createStandardMenu ( QWidget * parent = 0 )
$method=|QMenu *|createStandardMenu|QWidget *=0

$prototype=QToolBar * createStandardToolBar ( QWidget * parent = 0 )
$method=|QToolBar *|createStandardToolBar|QWidget *=0

$prototype=void detach ()
$method=|void|detach|

$prototype=void setAutoShowStandardWindow ( bool autoShow )
$method=|void|setAutoShowStandardWindow|bool

$prototype=QMainWindow * standardWindow () const
$method=|QMainWindow *|standardWindow|

$prototype=DebuggerState state () const
$method=|QScriptEngineDebugger::DebuggerState|state|

$prototype=QWidget * widget ( DebuggerWidget widget ) const
$method=|QWidget *|widget|QScriptEngineDebugger::DebuggerWidget

#pragma ENDDUMP
