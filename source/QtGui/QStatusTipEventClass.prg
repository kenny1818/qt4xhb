/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QStatusTipEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QStatusTipEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD tip
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStatusTipEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QStatusTipEvent>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QStatusTipEvent(const QString &tip)
*/
HB_FUNC( QSTATUSTIPEVENT_NEW )
{
  QStatusTipEvent * o = NULL;
  QString par1 = hb_parc(1);
  o = new QStatusTipEvent ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStatusTipEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QSTATUSTIPEVENT_DELETE )
{
  QStatusTipEvent * obj = (QStatusTipEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString tip() const
*/
HB_FUNC( QSTATUSTIPEVENT_TIP )
{
  QStatusTipEvent * obj = (QStatusTipEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->tip (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}





#pragma ENDDUMP
