$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QRadialGradient INHERIT QGradient

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD center
   METHOD setCenter1
   METHOD setCenter2
   METHOD setCenter
   METHOD focalPoint
   METHOD setFocalPoint1
   METHOD setFocalPoint2
   METHOD setFocalPoint
   METHOD radius
   METHOD setRadius
   METHOD centerRadius
   METHOD setCenterRadius
   METHOD focalRadius
   METHOD setFocalRadius

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadialGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QRadialGradient>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QRadialGradient()
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW1 )
{
  QRadialGradient * o = new QRadialGradient ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QRadialGradient(const QPointF &center, qreal radius, const QPointF &focalPoint)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW2 )
{
  QRadialGradient * o = new QRadialGradient ( *PQPOINTF(1), PQREAL(2), *PQPOINTF(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QRadialGradient(qreal cx, qreal cy, qreal radius, qreal fx, qreal fy)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW3 )
{
  QRadialGradient * o = new QRadialGradient ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QRadialGradient(const QPointF &center, qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW4 )
{
  QRadialGradient * o = new QRadialGradient ( *PQPOINTF(1), PQREAL(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QRadialGradient(qreal cx, qreal cy, qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW5 )
{
  QRadialGradient * o = new QRadialGradient ( PQREAL(1), PQREAL(2), PQREAL(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QRadialGradient(const QPointF &center, qreal centerRadius, const QPointF &focalPoint, qreal focalRadius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW6 )
{
  QRadialGradient * o = new QRadialGradient ( *PQPOINTF(1), PQREAL(2), *PQPOINTF(3), PQREAL(4) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QRadialGradient(qreal cx, qreal cy, qreal centerRadius, qreal fx, qreal fy, qreal focalRadius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW7 )
{
  QRadialGradient * o = new QRadialGradient ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QRadialGradient()
//[2]QRadialGradient(const QPointF &center, qreal radius, const QPointF &focalPoint)
//[3]QRadialGradient(qreal cx, qreal cy, qreal radius, qreal fx, qreal fy)
//[4]QRadialGradient(const QPointF &center, qreal radius)
//[5]QRadialGradient(qreal cx, qreal cy, qreal radius)
//[6]QRadialGradient(const QPointF &center, qreal centerRadius, const QPointF &focalPoint, qreal focalRadius)
//[7]QRadialGradient(qreal cx, qreal cy, qreal centerRadius, qreal fx, qreal fy, qreal focalRadius)

HB_FUNC_STATIC( QRADIALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW1 );
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISQPOINTF(3) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW2 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW3 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW4 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW5 );
  }
  else if( ISNUMPAR(4) && ISQPOINTF(1) && ISNUM(2) && ISQPOINTF(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW6 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRADIALGRADIENT_DELETE )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QPointF center() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_CENTER )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->center () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setCenter(const QPointF &center)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTER1 )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCenter ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCenter(qreal x, qreal y)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTER2 )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCenter ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCenter(const QPointF &center)
//[2]void setCenter(qreal x, qreal y)

HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_SETCENTER1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_SETCENTER2 );
  }
}

/*
QPointF focalPoint() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_FOCALPOINT )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->focalPoint () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setFocalPoint(const QPointF &focalPoint)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALPOINT1 )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocalPoint ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocalPoint(qreal x, qreal y)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALPOINT2 )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocalPoint ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setFocalPoint(const QPointF &focalPoint)
//[2]void setFocalPoint(qreal x, qreal y)

HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALPOINT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_SETFOCALPOINT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_SETFOCALPOINT2 );
  }
}

/*
qreal radius() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_RADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->radius () );
  }
}

/*
void setRadius(qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRadius ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal centerRadius() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_CENTERRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->centerRadius () );
  }
}

/*
void setCenterRadius(qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTERRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCenterRadius ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal focalRadius() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_FOCALRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->focalRadius () );
  }
}

/*
void setFocalRadius(qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocalRadius ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP