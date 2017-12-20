$header

#include "hbclass.ch"

CLASS QEventLoop INHERIT QObject

   METHOD new
   METHOD delete
   METHOD exec
   METHOD exit
   METHOD isRunning
   METHOD processEvents
   METHOD wakeUp
   METHOD quit

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QEventLoop>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QEventLoop ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=int exec ( ProcessEventsFlags flags = AllEvents )
$method=|int|exec|QEventLoop::ProcessEventsFlags=QEventLoop::AllEvents

$prototype=void exit ( int returnCode = 0 )
$method=|void|exit|int=0

$prototype=bool isRunning () const
$method=|bool|isRunning|

$prototype=bool processEvents ( ProcessEventsFlags flags = AllEvents )
$internalMethod=|bool|processEvents,processEvents1|QEventLoop::ProcessEventsFlags=QEventLoop::AllEvents

$prototype=void processEvents ( ProcessEventsFlags flags, int maxTime )
$internalMethod=|void|processEvents,processEvents2|QEventLoop::ProcessEventsFlags,int

//[1]bool processEvents ( ProcessEventsFlags flags = AllEvents )
//[2]void processEvents ( ProcessEventsFlags flags, int maxTime )

HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QEventLoop_processEvents1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QEventLoop_processEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void wakeUp ()
$method=|void|wakeUp|

$prototype=void quit ()
$method=|void|quit|

#pragma ENDDUMP
