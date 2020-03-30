/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QPIXMAP
REQUEST QPOINT
REQUEST QWIDGET
#endif

CLASS QDrag INHERIT QObject

   METHOD new
   METHOD delete
   METHOD exec
   METHOD hotSpot
   METHOD mimeData
   METHOD pixmap
   METHOD setDragCursor
   METHOD setHotSpot
   METHOD setMimeData
   METHOD setPixmap
   METHOD source
   METHOD target

   METHOD onActionChanged
   METHOD onTargetChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDrag
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QDrag>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtCore/QPoint>
#include <QtGui/QPixmap>
#include <QtCore/QMimeData>

/*
QDrag ( QWidget * dragSource )
*/
HB_FUNC_STATIC( QDRAG_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QDrag * o = new QDrag( PQWIDGET(1) );
    Qt4xHb::returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDRAG_DELETE )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
*/
void QDrag_exec1()
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RENUM( obj->exec( ISNIL(1)? (Qt::DropActions) Qt::MoveAction : (Qt::DropActions) hb_parni(1) ) );
  }
}

/*
Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )
*/
void QDrag_exec2()
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RENUM( obj->exec( (Qt::DropActions) hb_parni(1), (Qt::DropAction) hb_parni(2) ) );
  }
}

//[1]Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
//[2]Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QDrag_exec1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDrag_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPoint hotSpot () const
*/
HB_FUNC_STATIC( QDRAG_HOTSPOT )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->hotSpot() );
      Qt4xHb::createReturnClass( ptr, "QPOINT", true );
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
QMimeData * mimeData () const
*/
HB_FUNC_STATIC( QDRAG_MIMEDATA )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMimeData * ptr = obj->mimeData();
      Qt4xHb::createReturnQObjectClass( ptr, "QMIMEDATA" );
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
QPixmap pixmap () const
*/
HB_FUNC_STATIC( QDRAG_PIXMAP )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->pixmap() );
      Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
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
void setDragCursor ( const QPixmap & cursor, Qt::DropAction action )
*/
HB_FUNC_STATIC( QDRAG_SETDRAGCURSOR )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQPIXMAP(1) && ISNUM(2) )
    {
#endif
      obj->setDragCursor( *PQPIXMAP(1), (Qt::DropAction) hb_parni(2) );
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
void setHotSpot ( const QPoint & hotspot )
*/
HB_FUNC_STATIC( QDRAG_SETHOTSPOT )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      obj->setHotSpot( *PQPOINT(1) );
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
void setMimeData ( QMimeData * data )
*/
HB_FUNC_STATIC( QDRAG_SETMIMEDATA )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMIMEDATA(1) )
    {
#endif
      obj->setMimeData( PQMIMEDATA(1) );
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
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QDRAG_SETPIXMAP )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->setPixmap( *PQPIXMAP(1) );
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
QWidget * source () const
*/
HB_FUNC_STATIC( QDRAG_SOURCE )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->source();
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
QWidget * target () const
*/
HB_FUNC_STATIC( QDRAG_TARGET )
{
  QDrag * obj = (QDrag *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->target();
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QDragSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDRAG_ONACTIONCHANGED )
{
  QDragSlots_connect_signal( "actionChanged(Qt::DropAction)", "actionChanged(Qt::DropAction)" );
}

HB_FUNC_STATIC( QDRAG_ONTARGETCHANGED )
{
  QDragSlots_connect_signal( "targetChanged(QWidget*)", "targetChanged(QWidget*)" );
}

#pragma ENDDUMP
