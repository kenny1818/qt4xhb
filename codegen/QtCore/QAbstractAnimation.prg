$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QANIMATIONGROUP
#endif

CLASS QAbstractAnimation INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentLoop
   METHOD currentLoopTime
   METHOD currentTime
   METHOD direction
   METHOD duration
   METHOD group
   METHOD loopCount
   METHOD setDirection
   METHOD setLoopCount
   METHOD state
   METHOD totalDuration
   METHOD pause
   METHOD resume
   METHOD setCurrentTime
   METHOD setPaused
   METHOD start
   METHOD stop
   METHOD onCurrentLoopChanged
   METHOD onDirectionChanged
   METHOD onFinished
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QABSTRACTANIMATION_DELETE )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int currentLoop () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_CURRENTLOOP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentLoop () );
  }
}


/*
int currentLoopTime () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_CURRENTLOOPTIME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentLoopTime () );
  }
}


/*
int currentTime () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_CURRENTTIME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentTime () );
  }
}


/*
Direction direction () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_DIRECTION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->direction () );
  }
}


/*
virtual int duration () const = 0
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_DURATION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->duration () );
  }
}


/*
QAnimationGroup * group () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_GROUP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAnimationGroup * ptr = obj->group ();
    _qt4xhb_createReturnClass ( ptr, "QANIMATIONGROUP" );
  }
}


/*
int loopCount () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_LOOPCOUNT )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->loopCount () );
  }
}


/*
void  setDirection ( Direction direction )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_SETDIRECTION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDirection ( (QAbstractAnimation::Direction) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLoopCount ( int loopCount )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_SETLOOPCOUNT )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLoopCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
State state () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_STATE )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state () );
  }
}


/*
int totalDuration () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_TOTALDURATION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->totalDuration () );
  }
}


/*
void pause ()
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_PAUSE )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->pause ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resume ()
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_RESUME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resume ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentTime ( int msecs )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_SETCURRENTTIME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentTime ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaused ( bool paused )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_SETPAUSED )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPaused ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ( QAbstractAnimation::DeletionPolicy policy = KeepWhenStopped )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_START )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start ( ISNIL(1)? QAbstractAnimation::KeepWhenStopped : (QAbstractAnimation::DeletionPolicy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_STOP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP