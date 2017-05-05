/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QFocusEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QFocusEvent
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD gotFocus
   METHOD lostFocus
   METHOD reason
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFocusEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFocusEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QFocusEvent ( Type type, Qt::FocusReason reason = Qt::OtherFocusReason )
*/
HB_FUNC_STATIC( QFOCUSEVENT_NEW )
{
  QFocusEvent * o = NULL;
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? (int) Qt::OtherFocusReason : hb_parni(2);
  o = new QFocusEvent (  (QEvent::Type) par1,  (Qt::FocusReason) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QFOCUSEVENT_DELETE )
{
  QFocusEvent * obj = (QFocusEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool gotFocus () const
*/
HB_FUNC_STATIC( QFOCUSEVENT_GOTFOCUS )
{
  QFocusEvent * obj = (QFocusEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->gotFocus (  ) );
  }
}


/*
bool lostFocus () const
*/
HB_FUNC_STATIC( QFOCUSEVENT_LOSTFOCUS )
{
  QFocusEvent * obj = (QFocusEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->lostFocus (  ) );
  }
}


/*
Qt::FocusReason reason () const
*/
HB_FUNC_STATIC( QFOCUSEVENT_REASON )
{
  QFocusEvent * obj = (QFocusEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->reason (  ) );
  }
}




#pragma ENDDUMP
