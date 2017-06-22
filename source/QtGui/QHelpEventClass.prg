/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QHelpEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD x
   METHOD y
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHelpEvent ( Type type, const QPoint & pos, const QPoint & globalPos )
*/
HB_FUNC_STATIC( QHELPEVENT_NEW )
{
  QHelpEvent * o = new QHelpEvent ( (QEvent::Type) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QHELPEVENT_DELETE )
{
  QHelpEvent * obj = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QPoint & globalPos () const
*/
HB_FUNC_STATIC( QHELPEVENT_GLOBALPOS )
{
  QHelpEvent * obj = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->globalPos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
int globalX () const
*/
HB_FUNC_STATIC( QHELPEVENT_GLOBALX )
{
  QHelpEvent * obj = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->globalX () );
  }
}


/*
int globalY () const
*/
HB_FUNC_STATIC( QHELPEVENT_GLOBALY )
{
  QHelpEvent * obj = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->globalY () );
  }
}


/*
const QPoint & pos () const
*/
HB_FUNC_STATIC( QHELPEVENT_POS )
{
  QHelpEvent * obj = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->pos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
int x () const
*/
HB_FUNC_STATIC( QHELPEVENT_X )
{
  QHelpEvent * obj = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->x () );
  }
}


/*
int y () const
*/
HB_FUNC_STATIC( QHELPEVENT_Y )
{
  QHelpEvent * obj = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->y () );
  }
}




#pragma ENDDUMP
