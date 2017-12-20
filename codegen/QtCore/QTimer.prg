$header

#include "hbclass.ch"

CLASS QTimer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD interval
   METHOD isActive
   METHOD isSingleShot
   METHOD setInterval
   METHOD setSingleShot
   METHOD timerId
   METHOD start
   METHOD stop
   METHOD singleShot

   METHOD onTimeout

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTimer ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=int interval () const
$method=|int|interval|

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=bool isSingleShot () const
$method=|bool|isSingleShot|

$prototype=void setInterval ( int msec )
$method=|void|setInterval|int

$prototype=void setSingleShot ( bool singleShot )
$method=|void|setSingleShot|bool

$prototype=int timerId () const
$method=|int|timerId|

$prototype=void start ( int msec )
$internalMethod=|void|start,start1|int

$prototype=void start ()
$internalMethod=|void|start,start2|

//[1]void start ( int msec )
//[2]void start ()

HB_FUNC_STATIC( QTIMER_START )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTimer_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QTimer_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void stop ()
$method=|void|stop|

$prototype=static void singleShot ( int msec, QObject * receiver, const char * member )
$staticMethod=|void|singleShot|int,QObject *,const char *

#pragma ENDDUMP
