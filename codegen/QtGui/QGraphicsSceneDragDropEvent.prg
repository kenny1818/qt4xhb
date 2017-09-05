$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QPOINTF
REQUEST QPOINT
REQUEST QWIDGET
#endif

CLASS QGraphicsSceneDragDropEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD acceptProposedAction
   METHOD buttons
   METHOD dropAction
   METHOD mimeData
   METHOD modifiers
   METHOD pos
   METHOD possibleActions
   METHOD proposedAction
   METHOD scenePos
   METHOD screenPos
   METHOD setDropAction
   METHOD source

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsSceneDragDropEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
void acceptProposedAction ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_ACCEPTPROPOSEDACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->acceptProposedAction ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::MouseButtons buttons () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_BUTTONS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->buttons () );
  }
}

/*
Qt::DropAction dropAction () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_DROPACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->dropAction () );
  }
}

/*
const QMimeData * mimeData () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_MIMEDATA )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMimeData * ptr = obj->mimeData ();
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}

/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_MODIFIERS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->modifiers () );
  }
}

/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_POS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
Qt::DropActions possibleActions () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_POSSIBLEACTIONS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->possibleActions () );
  }
}

/*
Qt::DropAction proposedAction () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_PROPOSEDACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->proposedAction () );
  }
}

/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SCENEPOS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SCREENPOS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
void setDropAction ( Qt::DropAction action )
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SETDROPACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDropAction ( (Qt::DropAction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * source () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SOURCE )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->source ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

#pragma ENDDUMP
