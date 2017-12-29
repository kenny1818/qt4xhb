/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGesture INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD gestureCancelPolicy
   METHOD gestureType
   METHOD hasHotSpot
   METHOD hotSpot
   METHOD setGestureCancelPolicy
   METHOD setHotSpot
   METHOD state
   METHOD unsetHotSpot

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGesture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGesture ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGESTURE_NEW )
{
  QGesture * o = new QGesture ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QGESTURE_DELETE )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
GestureCancelPolicy gestureCancelPolicy () const
*/
HB_FUNC_STATIC( QGESTURE_GESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->gestureCancelPolicy () );
  }
}

/*
Qt::GestureType gestureType () const
*/
HB_FUNC_STATIC( QGESTURE_GESTURETYPE )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->gestureType () );
  }
}

/*
bool hasHotSpot () const
*/
HB_FUNC_STATIC( QGESTURE_HASHOTSPOT )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasHotSpot () );
  }
}

/*
QPointF hotSpot () const
*/
HB_FUNC_STATIC( QGESTURE_HOTSPOT )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->hotSpot () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setGestureCancelPolicy ( GestureCancelPolicy policy )
*/
HB_FUNC_STATIC( QGESTURE_SETGESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setGestureCancelPolicy ( (QGesture::GestureCancelPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHotSpot ( const QPointF & value )
*/
HB_FUNC_STATIC( QGESTURE_SETHOTSPOT )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHotSpot ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::GestureState state () const
*/
HB_FUNC_STATIC( QGESTURE_STATE )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state () );
  }
}

/*
void unsetHotSpot ()
*/
HB_FUNC_STATIC( QGESTURE_UNSETHOTSPOT )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unsetHotSpot ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
