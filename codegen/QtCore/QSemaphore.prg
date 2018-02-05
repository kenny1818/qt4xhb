%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QSemaphore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD available
   METHOD release
   METHOD tryAcquire

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSemaphore>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSemaphore ( int n = 0 )
$constructor=|new|int=0

$deleteMethod

$prototype=void acquire ( int n = 1 )
$method=|void|acquire|int=1

$prototype=int available () const
$method=|int|available|

$prototype=void release ( int n = 1 )
$method=|void|release|int=1

$prototype=bool tryAcquire ( int n = 1 )
$internalMethod=|bool|tryAcquire,tryAcquire1|int=1

$prototype=bool tryAcquire ( int n, int timeout )
$internalMethod=|bool|tryAcquire,tryAcquire2|int,int

//[1]bool tryAcquire ( int n = 1 )
//[2]bool tryAcquire ( int n, int timeout )

HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QSemaphore_tryAcquire1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSemaphore_tryAcquire2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
