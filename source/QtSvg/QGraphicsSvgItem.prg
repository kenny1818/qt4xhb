/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZE
REQUEST QSVGRENDERER
#endif

CLASS QGraphicsSvgItem INHERIT QGraphicsObject

   METHOD new
   METHOD elementId
   METHOD maximumCacheSize
   METHOD renderer
   METHOD setElementId
   METHOD setMaximumCacheSize
   METHOD setSharedRenderer
   METHOD boundingRect
   METHOD paint
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsSvgItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtSvg/QGraphicsSvgItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtSvg/QSvgRenderer>

/*
QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsSvgItem_new1()
{
  QGraphicsSvgItem * obj = new QGraphicsSvgItem( ISNIL(1)? 0 : (QGraphicsItem *) Qt4xHb::itemGetPtr(1) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )
*/
void QGraphicsSvgItem_new2()
{
  QGraphicsSvgItem * obj = new QGraphicsSvgItem( PQSTRING(1), ISNIL(2)? 0 : (QGraphicsItem *) Qt4xHb::itemGetPtr(2) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
[1]QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
[2]QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsSvgItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsSvgItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString elementId() const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_ELEMENTID )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->elementId() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSize maximumCacheSize() const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_MAXIMUMCACHESIZE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->maximumCacheSize() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSvgRenderer * renderer() const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_RENDERER )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSvgRenderer * ptr = obj->renderer();
      Qt4xHb::createReturnQObjectClass( ptr, "QSVGRENDERER" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setElementId( const QString & id )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_SETELEMENTID )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setElementId( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumCacheSize( const QSize & size )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_SETMAXIMUMCACHESIZE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setMaximumCacheSize( *PQSIZE(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSharedRenderer( QSvgRenderer * renderer )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_SETSHAREDRENDERER )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSVGRENDERER(1) )
    {
#endif
      obj->setSharedRenderer( PQSVGRENDERER(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect() const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_BOUNDINGRECT )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundingRect() );
      Qt4xHb::createReturnClass( ptr, "QRECTF", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_PAINT )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      obj->paint( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3,0) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int type() const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_TYPE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->type() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
