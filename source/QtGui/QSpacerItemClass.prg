/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
REQUEST QSPACERITEM
#endif

CLASS QSpacerItem INHERIT QLayoutItem

   DATA self_destruction INIT .F.

   METHOD new
   METHOD changeSize
   METHOD expandingDirections
   METHOD geometry
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSpacerItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSpacerItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSpacerItem ( int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum )
*/
HB_FUNC_STATIC( QSPACERITEM_NEW )
{
  int par3 = ISNIL(3)? (int) QSizePolicy::Minimum : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSizePolicy::Minimum : hb_parni(4);
  QSpacerItem * o = new QSpacerItem ( PINT(1), PINT(2), (QSizePolicy::Policy) par3, (QSizePolicy::Policy) par4 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
void changeSize ( int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum )
*/
HB_FUNC_STATIC( QSPACERITEM_CHANGESIZE )
{
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QSizePolicy::Minimum : hb_parni(3);
    int par4 = ISNIL(4)? (int) QSizePolicy::Minimum : hb_parni(4);
    obj->changeSize ( PINT(1), PINT(2), (QSizePolicy::Policy) par3, (QSizePolicy::Policy) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QSPACERITEM_EXPANDINGDIRECTIONS )
{
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->expandingDirections () );
  }
}

/*
virtual QRect geometry () const
*/
HB_FUNC_STATIC( QSPACERITEM_GEOMETRY )
{
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual bool isEmpty () const
*/
HB_FUNC_STATIC( QSPACERITEM_ISEMPTY )
{
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
virtual QSize maximumSize () const
*/
HB_FUNC_STATIC( QSPACERITEM_MAXIMUMSIZE )
{
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QSPACERITEM_MINIMUMSIZE )
{
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void setGeometry ( const QRect & r )
*/
HB_FUNC_STATIC( QSPACERITEM_SETGEOMETRY )
{
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSPACERITEM_SIZEHINT )
{
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSpacerItem * spacerItem ()
*/
HB_FUNC_STATIC( QSPACERITEM_SPACERITEM )
{
  QSpacerItem * obj = (QSpacerItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSpacerItem * ptr = obj->spacerItem ();
    _qt4xhb_createReturnClass ( ptr, "QSPACERITEM" );
  }
}

#pragma ENDDUMP
