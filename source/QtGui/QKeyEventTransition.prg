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

CLASS QKeyEventTransition INHERIT QEventTransition

   METHOD new
   METHOD delete
   METHOD key
   METHOD modifierMask
   METHOD setKey
   METHOD setModifierMask

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QKeyEventTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QKeyEventTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QKeyEventTransition ( QState * sourceState = 0 )
*/
void QKeyEventTransition_new1()
{
  QKeyEventTransition * obj = new QKeyEventTransition( OPQSTATE(1,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )
*/
void QKeyEventTransition_new2()
{
  QKeyEventTransition * obj = new QKeyEventTransition( PQOBJECT(1), (QEvent::Type) hb_parni(2), PINT(3), OPQSTATE(4,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
[1]QKeyEventTransition ( QState * sourceState = 0 )
[2]QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )
*/

HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QKeyEventTransition_new1();
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    QKeyEventTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QKEYEVENTTRANSITION_DELETE )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
int key() const
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_KEY )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->key() );
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
Qt::KeyboardModifiers modifierMask () const
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_MODIFIERMASK )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->modifierMask() );
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
void setKey ( int key )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_SETKEY )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setKey( PINT(1) );
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
void setModifierMask ( Qt::KeyboardModifiers modifierMask )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_SETMODIFIERMASK )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setModifierMask( (Qt::KeyboardModifiers) hb_parni(1) );
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
