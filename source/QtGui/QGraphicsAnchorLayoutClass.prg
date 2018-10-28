/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSANCHOR
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsAnchorLayout INHERIT QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addAnchor
   METHOD addAnchors
   METHOD addCornerAnchors
   METHOD anchor
   METHOD horizontalSpacing
   METHOD setHorizontalSpacing
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsAnchorLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsAnchorLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsAnchorLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSLAYOUTITEM(1)||ISNIL(1)) )
  {
    QGraphicsAnchorLayout * o = new QGraphicsAnchorLayout ( ISNIL(1)? 0 : (QGraphicsLayoutItem *) _qt4xhb_itemGetPtr(1) );
    _qt4xhb_returnNewObject( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_DELETE )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QGraphicsAnchor * addAnchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDANCHOR )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISQGRAPHICSLAYOUTITEM(3) && ISNUM(4) )
    {
#endif
      QGraphicsAnchor * ptr = obj->addAnchor ( PQGRAPHICSLAYOUTITEM(1), (Qt::AnchorPoint) hb_parni(2), PQGRAPHICSLAYOUTITEM(3), (Qt::AnchorPoint) hb_parni(4) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QGRAPHICSANCHOR" );
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
void addAnchors ( QGraphicsLayoutItem * firstItem, QGraphicsLayoutItem * secondItem, Qt::Orientations orientations = Qt::Horizontal | Qt::Vertical )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDANCHORS )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQGRAPHICSLAYOUTITEM(1) && ISQGRAPHICSLAYOUTITEM(2) && ISOPTNUM(3) )
    {
#endif
      obj->addAnchors ( PQGRAPHICSLAYOUTITEM(1), PQGRAPHICSLAYOUTITEM(2), ISNIL(3)? (Qt::Orientations) Qt::Horizontal | Qt::Vertical : (Qt::Orientations) hb_parni(3) );
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
void addCornerAnchors ( QGraphicsLayoutItem * firstItem, Qt::Corner firstCorner, QGraphicsLayoutItem * secondItem, Qt::Corner secondCorner )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDCORNERANCHORS )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISQGRAPHICSLAYOUTITEM(3) && ISNUM(4) )
    {
#endif
      obj->addCornerAnchors ( PQGRAPHICSLAYOUTITEM(1), (Qt::Corner) hb_parni(2), PQGRAPHICSLAYOUTITEM(3), (Qt::Corner) hb_parni(4) );
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
QGraphicsAnchor * anchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ANCHOR )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISQGRAPHICSLAYOUTITEM(3) && ISNUM(4) )
    {
#endif
      QGraphicsAnchor * ptr = obj->anchor ( PQGRAPHICSLAYOUTITEM(1), (Qt::AnchorPoint) hb_parni(2), PQGRAPHICSLAYOUTITEM(3), (Qt::AnchorPoint) hb_parni(4) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QGRAPHICSANCHOR" );
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
qreal horizontalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_HORIZONTALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->horizontalSpacing () );
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
void setHorizontalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETHORIZONTALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHorizontalSpacing ( PQREAL(1) );
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
void setSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSpacing ( PQREAL(1) );
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
void setVerticalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETVERTICALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setVerticalSpacing ( PQREAL(1) );
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
qreal verticalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_VERTICALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->verticalSpacing () );
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
virtual int count () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_COUNT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count () );
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
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_INVALIDATE )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->invalidate ();
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
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ITEMAT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QGraphicsLayoutItem * ptr = obj->itemAt ( PINT(1) );
      _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM", false );
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
virtual void removeAt ( int index )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_REMOVEAT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->removeAt ( PINT(1) );
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
virtual void setGeometry ( const QRectF & geom )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETGEOMETRY )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
#endif
      obj->setGeometry ( *PQRECTF(1) );
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

#pragma ENDDUMP
