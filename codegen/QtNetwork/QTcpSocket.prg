$header

#include "hbclass.ch"


CLASS QTcpSocket INHERIT QAbstractSocket

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTcpSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTcpSocket ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTCPSOCKET_NEW )
{
  QTcpSocket * o = new QTcpSocket ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QTCPSOCKET_DELETE )
{
  QTcpSocket * obj = (QTcpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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






#pragma ENDDUMP
