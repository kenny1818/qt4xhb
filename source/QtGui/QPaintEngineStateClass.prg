/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBRUSH
REQUEST QPOINTF
REQUEST QPAINTERPATH
REQUEST QREGION
REQUEST QFONT
REQUEST QPAINTER
REQUEST QPEN
REQUEST QTRANSFORM

CLASS QPaintEngineState

   DATA pointer
   DATA class_id INIT Class_Id_QPaintEngineState
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD backgroundBrush
   METHOD backgroundMode
   METHOD brush
   METHOD brushNeedsResolving
   METHOD brushOrigin
   METHOD clipOperation
   METHOD clipPath
   METHOD clipRegion
   METHOD compositionMode
   METHOD font
   METHOD isClipEnabled
   METHOD opacity
   METHOD painter
   METHOD pen
   METHOD penNeedsResolving
   METHOD renderHints
   METHOD state
   METHOD transform
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QPaintEngineState
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QPaintEngineState
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QPaintEngineState
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QPaintEngineState
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QPaintEngineState
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QPaintEngineState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPaintEngineState>

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

HB_FUNC_STATIC( QPAINTENGINESTATE_DELETE )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QBrush backgroundBrush () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BACKGROUNDBRUSH )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->backgroundBrush (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
Qt::BGMode backgroundMode () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BACKGROUNDMODE )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->backgroundMode (  ) );
  }
}


/*
QBrush brush () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BRUSH )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brush (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
bool brushNeedsResolving () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BRUSHNEEDSRESOLVING )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->brushNeedsResolving (  ) );
  }
}


/*
QPointF brushOrigin () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BRUSHORIGIN )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->brushOrigin (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
Qt::ClipOperation clipOperation () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_CLIPOPERATION )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->clipOperation (  ) );
  }
}


/*
QPainterPath clipPath () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_CLIPPATH )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->clipPath (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
QRegion clipRegion () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_CLIPREGION )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->clipRegion (  ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QPainter::CompositionMode compositionMode () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_COMPOSITIONMODE )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->compositionMode (  ) );
  }
}


/*
QFont font () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_FONT )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
bool isClipEnabled () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_ISCLIPENABLED )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isClipEnabled (  ) );
  }
}


/*
qreal opacity () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_OPACITY )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->opacity (  );
    hb_retnd( r );
  }
}


/*
QPainter * painter () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_PAINTER )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * ptr = obj->painter (  );
    _qt4xhb_createReturnClass ( ptr, "QPAINTER" );
  }
}


/*
QPen pen () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_PEN )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPen * ptr = new QPen( obj->pen (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPEN", true );
  }
}


/*
bool penNeedsResolving () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_PENNEEDSRESOLVING )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->penNeedsResolving (  ) );
  }
}


/*
QPainter::RenderHints renderHints () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_RENDERHINTS )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->renderHints (  ) );
  }
}


/*
QPaintEngine::DirtyFlags state () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_STATE )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state (  ) );
  }
}


/*
QTransform transform () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_TRANSFORM )
{
  QPaintEngineState * obj = (QPaintEngineState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transform (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}





#pragma ENDDUMP
