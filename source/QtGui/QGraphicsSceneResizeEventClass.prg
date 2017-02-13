/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZEF

CLASS QGraphicsSceneResizeEvent INHERIT QGraphicsSceneEvent

   DATA class_id INIT Class_Id_QGraphicsSceneResizeEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD newSize
   METHOD oldSize
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneResizeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QGraphicsSceneResizeEvent>

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
QGraphicsSceneMoveEvent ()
*/
HB_FUNC( QGRAPHICSSCENERESIZEEVENT_NEW )
{
  QGraphicsSceneResizeEvent * o = NULL;
  o = new QGraphicsSceneResizeEvent (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsSceneResizeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QGRAPHICSSCENERESIZEEVENT_DELETE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSizeF newSize () const
*/
HB_FUNC( QGRAPHICSSCENERESIZEEVENT_NEWSIZE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->newSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );  }
}


/*
QSizeF oldSize () const
*/
HB_FUNC( QGRAPHICSSCENERESIZEEVENT_OLDSIZE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->oldSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );  }
}




#pragma ENDDUMP
