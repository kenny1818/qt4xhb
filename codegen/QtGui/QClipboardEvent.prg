$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QEVENTPRIVATE
#endif

CLASS QClipboardEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD data

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QClipboardEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QClipboardEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QClipboardEvent(QEventPrivate *data)
*/
HB_FUNC_STATIC( QCLIPBOARDEVENT_NEW )
{
  QEventPrivate * par1 = (QEventPrivate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QClipboardEvent * o = new QClipboardEvent ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QCLIPBOARDEVENT_DELETE )
{
  QClipboardEvent * obj = (QClipboardEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QEventPrivate *data()
*/
HB_FUNC_STATIC( QCLIPBOARDEVENT_DATA )
{
  QClipboardEvent * obj = (QClipboardEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEventPrivate * ptr = obj->data ();
    _qt4xhb_createReturnClass ( ptr, "QEVENTPRIVATE" );
  }
}

#pragma ENDDUMP