/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QDragMoveEvent INHERIT QDropEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accept1
   METHOD accept2
   METHOD accept
   METHOD answerRect
   METHOD ignore1
   METHOD ignore2
   METHOD ignore
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDragMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDragMoveEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDragMoveEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = DragMove )
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_NEW )
{
  int par2 = hb_parni(2);
  const QMimeData * par3 = (const QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = ISNIL(6)? (int) QDragMoveEvent::DragMove : hb_parni(6);
  QDragMoveEvent * o = new QDragMoveEvent ( *PQPOINT(1),  (Qt::DropActions) par2, par3,  (Qt::MouseButtons) par4,  (Qt::KeyboardModifiers) par5,  (QDragMoveEvent::Type) par6 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QDRAGMOVEEVENT_DELETE )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void accept ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT1 )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->accept ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void accept ()
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT2 )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->accept ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void accept ( const QRect & rectangle )
//[2]void accept ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_ACCEPT1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_ACCEPT2 );
  }
}

/*
QRect answerRect () const
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_ANSWERRECT )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->answerRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
void ignore ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE1 )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ignore ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void ignore ()
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE2 )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ignore ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void ignore ( const QRect & rectangle )
//[2]void ignore ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_IGNORE1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_IGNORE2 );
  }
}



#pragma ENDDUMP
