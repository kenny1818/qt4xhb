/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

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

PROCEDURE destroyObject () CLASS QEventLoop
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QEventLoop>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QEventLoop ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QEventLoop * o = new QEventLoop ( OPQOBJECT(1,0) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEVENTLOOP_DELETE )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    Events_disconnect_all_events (obj, true);
    Signals_disconnect_all_signals (obj, true);
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
int exec ( ProcessEventsFlags flags = AllEvents )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXEC )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RINT( obj->exec ( ISNIL(1)? (QEventLoop::ProcessEventsFlags) QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void exit ( int returnCode = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXIT )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      obj->exit ( OPINT(1,0) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isRunning () const
*/
HB_FUNC_STATIC( QEVENTLOOP_ISRUNNING )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRunning () );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool processEvents ( ProcessEventsFlags flags = AllEvents )
*/
void QEventLoop_processEvents1 ()
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->processEvents ( ISNIL(1)? (QEventLoop::ProcessEventsFlags) QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
  }
}

/*
void processEvents ( ProcessEventsFlags flags, int maxTime )
*/
void QEventLoop_processEvents2 ()
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->processEvents ( (QEventLoop::ProcessEventsFlags) hb_parni(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
void wakeUp ()
*/
HB_FUNC_STATIC( QEVENTLOOP_WAKEUP )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->wakeUp ();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void quit ()
*/
HB_FUNC_STATIC( QEVENTLOOP_QUIT )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->quit ();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
