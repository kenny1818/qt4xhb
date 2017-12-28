$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QGRAPHICSITEM
REQUEST QPOINT
REQUEST QPOLYGON
REQUEST QPAINTERPATH
REQUEST QPOINTF
REQUEST QPOLYGONF
REQUEST QMATRIX
REQUEST QGRAPHICSSCENE
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QGraphicsView INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD backgroundBrush
   METHOD cacheMode
   METHOD centerOn
   METHOD dragMode
   METHOD ensureVisible
   METHOD fitInView
   METHOD foregroundBrush
   METHOD isInteractive
   METHOD isTransformed
   METHOD itemAt
   METHOD items1
   METHOD items2
   METHOD items3
   METHOD items4
   METHOD items5
   METHOD items6
   METHOD items7
   METHOD items
   METHOD mapFromScene
   METHOD mapToScene
   METHOD matrix
   METHOD optimizationFlags
   METHOD render
   METHOD renderHints
   METHOD resetCachedContent
   METHOD resetMatrix
   METHOD resetTransform
   METHOD resizeAnchor
   METHOD rotate
   METHOD rubberBandSelectionMode
   METHOD scale
   METHOD scene
   METHOD sceneRect
   METHOD setAlignment
   METHOD setBackgroundBrush
   METHOD setCacheMode
   METHOD setDragMode
   METHOD setForegroundBrush
   METHOD setInteractive
   METHOD setMatrix
   METHOD setOptimizationFlag
   METHOD setOptimizationFlags
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setResizeAnchor
   METHOD setRubberBandSelectionMode
   METHOD setScene
   METHOD setSceneRect
   METHOD setTransform
   METHOD setTransformationAnchor
   METHOD setViewportUpdateMode
   METHOD shear
   METHOD transform
   METHOD transformationAnchor
   METHOD translate
   METHOD viewportTransform
   METHOD viewportUpdateMode
   METHOD inputMethodQuery
   METHOD sizeHint
   METHOD invalidateScene
   METHOD updateScene
   METHOD updateSceneRect

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

$prototype=QGraphicsView ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )
$internalConstructor=|new2|QGraphicsScene *,QWidget *=0

//[1]QGraphicsView ( QWidget * parent = 0 )
//[2]QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QGraphicsView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQGRAPHICSSCENE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QGraphicsView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=QBrush backgroundBrush () const
$method=|QBrush|backgroundBrush|

$prototype=CacheMode cacheMode () const
$method=|QGraphicsView::CacheMode|cacheMode|

$prototype=void centerOn ( const QPointF & pos )
$internalMethod=|void|centerOn,centerOn1|const QPointF &

$prototype=void centerOn ( qreal x, qreal y )
$internalMethod=|void|centerOn,centerOn2|qreal,qreal

$prototype=void centerOn ( const QGraphicsItem * item )
$internalMethod=|void|centerOn,centerOn3|const QGraphicsItem *

//[1]void centerOn ( const QPointF & pos )
//[2]void centerOn ( qreal x, qreal y )
//[3]void centerOn ( const QGraphicsItem * item )

HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsView_centerOn1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_centerOn2();
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
  {
    QGraphicsView_centerOn3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=DragMode dragMode () const
$method=|QGraphicsView::DragMode|dragMode|

$prototype=void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
$internalMethod=|void|ensureVisible,ensureVisible1|const QRectF &,int=50,int=50

$prototype=void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
$internalMethod=|void|ensureVisible,ensureVisible2|qreal,qreal,qreal,qreal,int=50,int=50

$prototype=void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )
$internalMethod=|void|ensureVisible,ensureVisible3|const QGraphicsItem *,int=50,int=50

//[1]void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
//[2]void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
//[3]void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )

HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QGraphicsView_ensureVisible1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    QGraphicsView_ensureVisible2();
  }
  else if( ISBETWEEN(1,3) && ISQGRAPHICSITEM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QGraphicsView_ensureVisible3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
$internalMethod=|void|fitInView,fitInView1|const QRectF &,Qt::AspectRatioMode=Qt::IgnoreAspectRatio

$prototype=void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
$internalMethod=|void|fitInView,fitInView2|qreal,qreal,qreal,qreal,Qt::AspectRatioMode=Qt::IgnoreAspectRatio

$prototype=void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
$internalMethod=|void|fitInView,fitInView3|const QGraphicsItem *,Qt::AspectRatioMode=Qt::IgnoreAspectRatio

//[1]void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
//[2]void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
//[3]void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )

HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW )
{
  if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGraphicsView_fitInView1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    QGraphicsView_fitInView2();
  }
  else if( ISBETWEEN(1,2) && ISQGRAPHICSITEM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGraphicsView_fitInView3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QBrush foregroundBrush () const
$method=|QBrush|foregroundBrush|

$prototype=bool isInteractive () const
$method=|bool|isInteractive|

$prototype=bool isTransformed () const
$method=|bool|isTransformed|

$prototype=QGraphicsItem * itemAt ( const QPoint & pos ) const
$internalMethod=|QGraphicsItem *|itemAt,itemAt1|const QPoint &

$prototype=QGraphicsItem * itemAt ( int x, int y ) const
$internalMethod=|QGraphicsItem *|itemAt,itemAt2|int,int

//[1]QGraphicsItem * itemAt ( const QPoint & pos ) const
//[2]QGraphicsItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QGraphicsView_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QList<QGraphicsItem *> items () const
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS1 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGraphicsItem *> list = obj->items ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QGraphicsItem *> items ( const QPoint & pos ) const
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS2 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGraphicsItem *> list = obj->items ( *PQPOINT(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QGraphicsItem *> items ( int x, int y ) const
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS3 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGraphicsItem *> list = obj->items ( PINT(1), PINT(2) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QGraphicsItem *> items ( int x, int y, int w, int h, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS4 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par5 = ISNIL(5)? (int) Qt::IntersectsItemShape : hb_parni(5);
    QList<QGraphicsItem *> list = obj->items ( PINT(1), PINT(2), PINT(3), PINT(4), (Qt::ItemSelectionMode) par5 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QGraphicsItem *> items ( const QRect & rect, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS5 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    QList<QGraphicsItem *> list = obj->items ( *PQRECT(1), (Qt::ItemSelectionMode) par2 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QGraphicsItem *> items ( const QPolygon & polygon, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS6 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    QList<QGraphicsItem *> list = obj->items ( *PQPOLYGON(1), (Qt::ItemSelectionMode) par2 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS7 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    QList<QGraphicsItem *> list = obj->items ( *PQPAINTERPATH(1), (Qt::ItemSelectionMode) par2 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

//[1]QList<QGraphicsItem *> items () const
//[2]QList<QGraphicsItem *> items ( const QPoint & pos ) const
//[3]QList<QGraphicsItem *> items ( int x, int y ) const
//[4]QList<QGraphicsItem *> items ( int x, int y, int w, int h, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
//[5]QList<QGraphicsItem *> items ( const QRect & rect, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
//[6]QList<QGraphicsItem *> items ( const QPolygon & polygon, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
//[7]QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS3 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS4 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS5 );
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS6 );
  }
  else if( ISBETWEEN(1,2) && ISQPAINTERPATH(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPoint mapFromScene ( const QPointF & point ) const
$internalMethod=|QPoint|mapFromScene,mapFromScene1|const QPointF &

$prototype=QPolygon mapFromScene ( const QRectF & rect ) const
$internalMethod=|QPolygon|mapFromScene,mapFromScene2|const QRectF &

$prototype=QPolygon mapFromScene ( const QPolygonF & polygon ) const
$internalMethod=|QPolygon|mapFromScene,mapFromScene3|const QPolygonF &

$prototype=QPainterPath mapFromScene ( const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapFromScene,mapFromScene4|const QPainterPath &

$prototype=QPoint mapFromScene ( qreal x, qreal y ) const
$internalMethod=|QPoint|mapFromScene,mapFromScene5|qreal,qreal

$prototype=QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QPolygon|mapFromScene,mapFromScene6|qreal,qreal,qreal,qreal

//[1]QPoint mapFromScene ( const QPointF & point ) const
//[2]QPolygon mapFromScene ( const QRectF & rect ) const
//[3]QPolygon mapFromScene ( const QPolygonF & polygon ) const
//[4]QPainterPath mapFromScene ( const QPainterPath & path ) const
//[5]QPoint mapFromScene ( qreal x, qreal y ) const
//[6]QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsView_mapFromScene1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsView_mapFromScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsView_mapFromScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsView_mapFromScene4();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_mapFromScene5();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsView_mapFromScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPointF mapToScene ( const QPoint & point ) const
$internalMethod=|QPointF|mapToScene,mapToScene1|const QPoint &

$prototype=QPolygonF mapToScene ( const QRect & rect ) const
$internalMethod=|QPolygonF|mapToScene,mapToScene2|const QRect &

$prototype=QPolygonF mapToScene ( const QPolygon & polygon ) const
$internalMethod=|QPolygonF|mapToScene,mapToScene3|const QPolygon &

$prototype=QPainterPath mapToScene ( const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapToScene,mapToScene4|const QPainterPath &

$prototype=QPointF mapToScene ( int x, int y ) const
$internalMethod=|QPointF|mapToScene,mapToScene5|int,int

$prototype=QPolygonF mapToScene ( int x, int y, int w, int h ) const
$internalMethod=|QPolygonF|mapToScene,mapToScene6|int,int,int,int

//[1]QPointF mapToScene ( const QPoint & point ) const
//[2]QPolygonF mapToScene ( const QRect & rect ) const
//[3]QPolygonF mapToScene ( const QPolygon & polygon ) const
//[4]QPainterPath mapToScene ( const QPainterPath & path ) const
//[5]QPointF mapToScene ( int x, int y ) const
//[6]QPolygonF mapToScene ( int x, int y, int w, int h ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QGraphicsView_mapToScene1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QGraphicsView_mapToScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QGraphicsView_mapToScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsView_mapToScene4();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_mapToScene5();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsView_mapToScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QMatrix matrix () const
$method=|QMatrix|matrix|

$prototype=OptimizationFlags optimizationFlags () const
$method=|QGraphicsView::OptimizationFlags|optimizationFlags|

$prototype=void render ( QPainter * painter, const QRectF & target = QRectF(), const QRect & source = QRect(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )
$method=|void|render|QPainter *,const QRectF &=QRectF(),const QRect &=QRect(),Qt::AspectRatioMode=Qt::KeepAspectRatio

$prototype=QPainter::RenderHints renderHints () const
$method=|QPainter::RenderHints|renderHints|

$prototype=void resetCachedContent ()
$method=|void|resetCachedContent|

$prototype=void resetMatrix ()
$method=|void|resetMatrix|

$prototype=void resetTransform ()
$method=|void|resetTransform|

$prototype=ViewportAnchor resizeAnchor () const
$method=|QGraphicsView::ViewportAnchor|resizeAnchor|

$prototype=void rotate ( qreal angle )
$method=|void|rotate|qreal

$prototype=Qt::ItemSelectionMode rubberBandSelectionMode () const
$method=|Qt::ItemSelectionMode|rubberBandSelectionMode|

$prototype=void scale ( qreal sx, qreal sy )
$method=|void|scale|qreal,qreal

$prototype=QGraphicsScene * scene () const
$method=|QGraphicsScene *|scene|

$prototype=QRectF sceneRect () const
$method=|QRectF|sceneRect|

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setBackgroundBrush ( const QBrush & brush )
$method=|void|setBackgroundBrush|const QBrush &

$prototype=void setCacheMode ( CacheMode mode )
$method=|void|setCacheMode|QGraphicsView::CacheMode

$prototype=void setDragMode ( DragMode mode )
$method=|void|setDragMode|QGraphicsView::DragMode

$prototype=void setForegroundBrush ( const QBrush & brush )
$method=|void|setForegroundBrush|const QBrush &

$prototype=void setInteractive ( bool allowed )
$method=|void|setInteractive|bool

$prototype=void setMatrix ( const QMatrix & matrix, bool combine = false )
$method=|void|setMatrix|const QMatrix &,bool=false

$prototype=void setOptimizationFlag ( OptimizationFlag flag, bool enabled = true )
$method=|void|setOptimizationFlag|QGraphicsView::OptimizationFlag,bool=true

$prototype=void setOptimizationFlags ( OptimizationFlags flags )
$method=|void|setOptimizationFlags|QGraphicsView::OptimizationFlags

$prototype=void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

$prototype=void setRenderHints ( QPainter::RenderHints hints )
$method=|void|setRenderHints|QPainter::RenderHints

$prototype=void setResizeAnchor ( ViewportAnchor anchor )
$method=|void|setResizeAnchor|QGraphicsView::ViewportAnchor

$prototype=void setRubberBandSelectionMode ( Qt::ItemSelectionMode mode )
$method=|void|setRubberBandSelectionMode|Qt::ItemSelectionMode

$prototype=void setScene ( QGraphicsScene * scene )
$method=|void|setScene|QGraphicsScene *

$prototype=void setSceneRect ( const QRectF & rect )
$internalMethod=|void|setSceneRect,setSceneRect1|const QRectF &

$prototype=void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
$internalMethod=|void|setSceneRect,setSceneRect2|qreal,qreal,qreal,qreal

//[1]void setSceneRect ( const QRectF & rect )
//[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsView_setSceneRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsView_setSceneRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setTransform ( const QTransform & matrix, bool combine = false )
$method=|void|setTransform|const QTransform &,bool=false

$prototype=void setTransformationAnchor ( ViewportAnchor anchor )
$method=|void|setTransformationAnchor|QGraphicsView::ViewportAnchor

$prototype=void setViewportUpdateMode ( ViewportUpdateMode mode )
$method=|void|setViewportUpdateMode|QGraphicsView::ViewportUpdateMode

$prototype=void shear ( qreal sh, qreal sv )
$method=|void|shear|qreal,qreal

$prototype=QTransform transform () const
$method=|QTransform|transform|

$prototype=ViewportAnchor transformationAnchor () const
$method=|QGraphicsView::ViewportAnchor|transformationAnchor|

$prototype=void translate ( qreal dx, qreal dy )
$method=|void|translate|qreal,qreal

$prototype=QTransform viewportTransform () const
$method=|QTransform|viewportTransform|

$prototype=ViewportUpdateMode viewportUpdateMode () const
$method=|QGraphicsView::ViewportUpdateMode|viewportUpdateMode|

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void invalidateScene ( const QRectF & rect = QRectF(), QGraphicsScene::SceneLayers layers = QGraphicsScene::AllLayers )
$method=|void|invalidateScene|const QRectF &=QRectF(),QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

$prototype=void updateScene ( const QList<QRectF> & rects )
HB_FUNC_STATIC( QGRAPHICSVIEW_UPDATESCENE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QRectF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->updateScene ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void updateSceneRect ( const QRectF & rect )
$method=|void|updateSceneRect|const QRectF &

#pragma ENDDUMP
