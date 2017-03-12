/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QGRAPHICSWIDGET
REQUEST QGRAPHICSELLIPSEITEM
REQUEST QGRAPHICSLINEITEM
REQUEST QGRAPHICSPATHITEM
REQUEST QGRAPHICSPIXMAPITEM
REQUEST QGRAPHICSPOLYGONITEM
REQUEST QGRAPHICSRECTITEM
REQUEST QGRAPHICSSIMPLETEXTITEM
REQUEST QGRAPHICSTEXTITEM
REQUEST QGRAPHICSPROXYWIDGET
REQUEST QBRUSH
REQUEST QGRAPHICSITEMGROUP
REQUEST QFONT
REQUEST QVARIANT
REQUEST QRECTF
REQUEST QPALETTE
REQUEST QPAINTERPATH
REQUEST QSTYLE
REQUEST QGRAPHICSVIEW
#endif

CLASS QGraphicsScene INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsScene
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD activePanel
   METHOD activeWindow
   METHOD addEllipse1
   METHOD addEllipse2
   METHOD addEllipse
   METHOD addItem
   METHOD addLine1
   METHOD addLine2
   METHOD addLine
   METHOD addPath
   METHOD addPixmap
   METHOD addPolygon
   METHOD addRect1
   METHOD addRect2
   METHOD addRect
   METHOD addSimpleText
   METHOD addText
   METHOD addWidget
   METHOD backgroundBrush
   METHOD bspTreeDepth
   METHOD clearFocus
   METHOD collidingItems
   METHOD createItemGroup
   METHOD destroyItemGroup
   METHOD focusItem
   METHOD font
   METHOD foregroundBrush
   METHOD hasFocus
   METHOD height
   METHOD inputMethodQuery
   METHOD invalidate1
   METHOD invalidate2
   METHOD invalidate
   METHOD isActive
   METHOD isSortCacheEnabled
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD itemIndexMethod
   METHOD items1
   METHOD items2
   METHOD items3
   METHOD items4
   METHOD items5
   METHOD items6
   METHOD items7
   METHOD items
   METHOD itemsBoundingRect
   METHOD mouseGrabberItem
   METHOD palette
   METHOD removeItem
   METHOD render
   METHOD sceneRect
   METHOD selectedItems
   METHOD selectionArea
   METHOD sendEvent
   METHOD setActivePanel
   METHOD setActiveWindow
   METHOD setBackgroundBrush
   METHOD setBspTreeDepth
   METHOD setFocus
   METHOD setFocusItem
   METHOD setFont
   METHOD setForegroundBrush
   METHOD setItemIndexMethod
   METHOD setPalette
   METHOD setSceneRect1
   METHOD setSceneRect2
   METHOD setSceneRect
   METHOD setSelectionArea1
   METHOD setSelectionArea2
   METHOD setSelectionArea
   METHOD setSortCacheEnabled
   METHOD setStickyFocus
   METHOD setStyle
   METHOD stickyFocus
   METHOD style
   METHOD update1
   METHOD update2
   METHOD update
   METHOD views
   METHOD width
   METHOD advance
   METHOD clear
   METHOD clearSelection
   METHOD onChanged
   METHOD onSceneRectChanged
   METHOD onSelectionChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsScene
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsScene>

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

#include <QVariant>
#include <QPalette>

/*
QGraphicsScene ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_NEW1 )
{
  QGraphicsScene * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsScene ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsScene *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_NEW2 )
{
  QGraphicsScene * o = NULL;
  QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsScene ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsScene *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_NEW3 )
{
  QGraphicsScene * o = NULL;
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  QObject * par5 = ISNIL(5)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsScene ( par1, par2, par3, par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsScene *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QGraphicsScene ( QObject * parent = 0 )
//[2]QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
//[3]QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSCENE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_NEW2 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSSCENE_DELETE )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QGraphicsItem * activePanel () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ACTIVEPANEL )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->activePanel (  );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


/*
QGraphicsWidget * activeWindow () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ACTIVEWINDOW )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsWidget * ptr = obj->activeWindow (  );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSWIDGET" );
  }
}


/*
QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDELLIPSE1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPen par2 = ISNIL(2)? QPen() : *(QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QBrush par3 = ISNIL(3)? QBrush() : *(QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsEllipseItem * ptr = obj->addEllipse ( *par1, par2, par3 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSELLIPSEITEM" );
  }
}


/*
QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDELLIPSE2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    QPen par5 = ISNIL(5)? QPen() : *(QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QBrush par6 = ISNIL(6)? QBrush() : *(QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsEllipseItem * ptr = obj->addEllipse ( par1, par2, par3, par4, par5, par6 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSELLIPSEITEM" );
  }
}


//[1]QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
//[2]QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDELLIPSE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDELLIPSE1 );
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDELLIPSE2 );
  }
}

/*
void addItem ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDITEM )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDLINE1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineF * par1 = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPen par2 = ISNIL(2)? QPen() : *(QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsLineItem * ptr = obj->addLine ( *par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLINEITEM" );
  }
}


/*
QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDLINE2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    QPen par5 = ISNIL(5)? QPen() : *(QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsLineItem * ptr = obj->addLine ( par1, par2, par3, par4, par5 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLINEITEM" );
  }
}


//[1]QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
//[2]QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDLINE )
{
  if( ISBETWEEN(1,2) && ISQLINEF(1) && (ISQPEN(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDLINE1 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDLINE2 );
  }
}

/*
QGraphicsPathItem * addPath ( const QPainterPath & path, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDPATH )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPen par2 = ISNIL(2)? QPen() : *(QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QBrush par3 = ISNIL(3)? QBrush() : *(QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsPathItem * ptr = obj->addPath ( *par1, par2, par3 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSPATHITEM" );
  }
}


/*
QGraphicsPixmapItem * addPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDPIXMAP )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsPixmapItem * ptr = obj->addPixmap ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSPIXMAPITEM" );
  }
}


/*
QGraphicsPolygonItem * addPolygon ( const QPolygonF & polygon, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDPOLYGON )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPen par2 = ISNIL(2)? QPen() : *(QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QBrush par3 = ISNIL(3)? QBrush() : *(QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsPolygonItem * ptr = obj->addPolygon ( *par1, par2, par3 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSPOLYGONITEM" );
  }
}


/*
QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDRECT1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPen par2 = ISNIL(2)? QPen() : *(QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QBrush par3 = ISNIL(3)? QBrush() : *(QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsRectItem * ptr = obj->addRect ( *par1, par2, par3 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSRECTITEM" );
  }
}


/*
QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDRECT2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    QPen par5 = ISNIL(5)? QPen() : *(QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QBrush par6 = ISNIL(6)? QBrush() : *(QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsRectItem * ptr = obj->addRect ( par1, par2, par3, par4, par5, par6 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSRECTITEM" );
  }
}


//[1]QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
//[2]QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDRECT )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDRECT1 );
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDRECT2 );
  }
}

/*
QGraphicsSimpleTextItem * addSimpleText ( const QString & text, const QFont & font = QFont() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDSIMPLETEXT )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QFont par2 = ISNIL(2)? QFont() : *(QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsSimpleTextItem * ptr = obj->addSimpleText ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSSIMPLETEXTITEM" );
  }
}


/*
QGraphicsTextItem * addText ( const QString & text, const QFont & font = QFont() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDTEXT )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QFont par2 = ISNIL(2)? QFont() : *(QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsTextItem * ptr = obj->addText ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSTEXTITEM" );
  }
}


/*
QGraphicsProxyWidget * addWidget ( QWidget * widget, Qt::WindowFlags wFlags = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADDWIDGET )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QGraphicsProxyWidget * ptr = obj->addWidget ( par1,  (Qt::WindowFlags) par2 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSPROXYWIDGET" );
  }
}


/*
QBrush backgroundBrush () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_BACKGROUNDBRUSH )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->backgroundBrush (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
int bspTreeDepth () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_BSPTREEDEPTH )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->bspTreeDepth (  ) );
  }
}


/*
void clearFocus ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_CLEARFOCUS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearFocus (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QGraphicsItem *> collidingItems ( const QGraphicsItem * item, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_COLLIDINGITEMS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    QList<QGraphicsItem *> list = obj->collidingItems ( par1,  (Qt::ItemSelectionMode) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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


/*
QGraphicsItemGroup * createItemGroup ( const QList<QGraphicsItem *> & items )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_CREATEITEMGROUP )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QGraphicsItem *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
    QGraphicsItemGroup * ptr = obj->createItemGroup ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEMGROUP" );
  }
}


/*
void destroyItemGroup ( QGraphicsItemGroup * group )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_DESTROYITEMGROUP )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItemGroup * par1 = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->destroyItemGroup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QGraphicsItem * focusItem () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_FOCUSITEM )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->focusItem (  );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


/*
QFont font () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_FONT )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
QBrush foregroundBrush () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_FOREGROUNDBRUSH )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foregroundBrush (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
bool hasFocus () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_HASFOCUS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasFocus (  ) );
  }
}


/*
qreal height () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_HEIGHT )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->height (  );
    hb_retnd( r );
  }
}


/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_INPUTMETHODQUERY )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_INVALIDATE1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    int par5 = ISNIL(5)? (int) QGraphicsScene::AllLayers : hb_parni(5);
    obj->invalidate ( par1, par2, par3, par4,  (QGraphicsScene::SceneLayers) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_INVALIDATE2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF par1 = ISNIL(1)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QGraphicsScene::AllLayers : hb_parni(2);
    obj->invalidate ( par1,  (QGraphicsScene::SceneLayers) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
//[2]void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )

HB_FUNC_STATIC( QGRAPHICSSCENE_INVALIDATE )
{
  if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_INVALIDATE1 );
  }
  else if( ISBETWEEN(0,2) && (ISQRECTF(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_INVALIDATE2 );
  }
}

/*
bool isActive () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ISACTIVE )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
bool isSortCacheEnabled () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ISSORTCACHEENABLED )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSortCacheEnabled (  ) );
  }
}


/*
QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMAT1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTransform * par2 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsItem * ptr = obj->itemAt ( *par1, *par2 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


/*
QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMAT2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QTransform * par3 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsItem * ptr = obj->itemAt ( par1, par2, *par3 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


//[1]QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
//[2]QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const

HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMAT )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQTRANSFORM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMAT1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMAT2 );
  }
}

/*
ItemIndexMethod itemIndexMethod () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMINDEXMETHOD )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->itemIndexMethod (  ) );
  }
}


/*
QList<QGraphicsItem *> items () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGraphicsItem *> list = obj->items (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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


/*
QList<QGraphicsItem *> items ( Qt::SortOrder order ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QList<QGraphicsItem *> list = obj->items (  (Qt::SortOrder) par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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


/*
QList<QGraphicsItem *> items ( const QPointF & pos, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS3 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QTransform par4 = ISNIL(4)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( *par1,  (Qt::ItemSelectionMode) par2,  (Qt::SortOrder) par3, par4 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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


/*
QList<QGraphicsItem *> items ( qreal x, qreal y, qreal w, qreal h, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS4 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    int par5 = hb_parni(5);
    int par6 = hb_parni(6);
    QTransform par7 = ISNIL(7)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( par1, par2, par3, par4,  (Qt::ItemSelectionMode) par5,  (Qt::SortOrder) par6, par7 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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


/*
QList<QGraphicsItem *> items ( const QRectF & rect, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS5 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QTransform par4 = ISNIL(4)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( *par1,  (Qt::ItemSelectionMode) par2,  (Qt::SortOrder) par3, par4 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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


/*
QList<QGraphicsItem *> items ( const QPolygonF & polygon, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS6 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QTransform par4 = ISNIL(4)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( *par1,  (Qt::ItemSelectionMode) par2,  (Qt::SortOrder) par3, par4 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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


/*
QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS7 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QTransform par4 = ISNIL(4)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( *par1,  (Qt::ItemSelectionMode) par2,  (Qt::SortOrder) par3, par4 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
//[2]QList<QGraphicsItem *> items ( Qt::SortOrder order ) const
//[3]QList<QGraphicsItem *> items ( const QPointF & pos, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
//[4]QList<QGraphicsItem *> items ( qreal x, qreal y, qreal w, qreal h, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
//[5]QList<QGraphicsItem *> items ( const QRectF & rect, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
//[6]QList<QGraphicsItem *> items ( const QPolygonF & polygon, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
//[7]QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const

HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS2 );
  }
  else if( ISBETWEEN(3,4) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS3 );
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQTRANSFORM(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS4 );
  }
  else if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS5 );
  }
  else if( ISBETWEEN(3,4) && ISQPOLYGONF(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS6 );
  }
  else if( ISBETWEEN(3,4) && ISQPAINTERPATH(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS7 );
  }
}

/*
QRectF itemsBoundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMSBOUNDINGRECT )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->itemsBoundingRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QGraphicsItem * mouseGrabberItem () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_MOUSEGRABBERITEM )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->mouseGrabberItem (  );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


/*
QPalette palette () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_PALETTE )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->palette (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
void removeItem ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_REMOVEITEM )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void render ( QPainter * painter, const QRectF & target = QRectF(), const QRectF & source = QRectF(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_RENDER )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF par2 = ISNIL(2)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF par3 = ISNIL(3)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? (int) Qt::KeepAspectRatio : hb_parni(4);
    obj->render ( par1, par2, par3,  (Qt::AspectRatioMode) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRectF sceneRect () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SCENERECT )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->sceneRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QList<QGraphicsItem *> selectedItems () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SELECTEDITEMS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGraphicsItem *> list = obj->selectedItems (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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


/*
QPainterPath selectionArea () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SELECTIONAREA )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->selectionArea (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
bool sendEvent ( QGraphicsItem * item, QEvent * event )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SENDEVENT )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QEvent * par2 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->sendEvent ( par1, par2 ) );
  }
}


/*
void setActivePanel ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETACTIVEPANEL )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setActivePanel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setActiveWindow ( QGraphicsWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETACTIVEWINDOW )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsWidget * par1 = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setActiveWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBackgroundBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETBACKGROUNDBRUSH )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBackgroundBrush ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBspTreeDepth ( int depth )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETBSPTREEDEPTH )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBspTreeDepth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocus ( Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETFOCUS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::OtherFocusReason : hb_parni(1);
    obj->setFocus (  (Qt::FocusReason) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocusItem ( QGraphicsItem * item, Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETFOCUSITEM )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) Qt::OtherFocusReason : hb_parni(2);
    obj->setFocusItem ( par1,  (Qt::FocusReason) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETFONT )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setForegroundBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETFOREGROUNDBRUSH )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setForegroundBrush ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemIndexMethod ( ItemIndexMethod method )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETITEMINDEXMETHOD )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setItemIndexMethod (  (QGraphicsScene::ItemIndexMethod) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPalette ( const QPalette & palette )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETPALETTE )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * par1 = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPalette ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSceneRect ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETSCENERECT1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSceneRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETSCENERECT2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->setSceneRect ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setSceneRect ( const QRectF & rect )
//[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_SETSCENERECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_SETSCENERECT2 );
  }
}

/*
void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETSELECTIONAREA1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTransform * par2 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSelectionArea ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETSELECTIONAREA2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QTransform * par3 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSelectionArea ( *par1,  (Qt::ItemSelectionMode) par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
//[2]void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSELECTIONAREA )
{
  if( ISNUMPAR(2) && ISQPAINTERPATH(1) && ISQTRANSFORM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_SETSELECTIONAREA1 );
  }
  else if( ISNUMPAR(3) && ISQPAINTERPATH(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_SETSELECTIONAREA2 );
  }
}

/*
void setSortCacheEnabled ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETSORTCACHEENABLED )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSortCacheEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStickyFocus ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETSTICKYFOCUS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStickyFocus ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyle ( QStyle * style )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SETSTYLE )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStyle * par1 = (QStyle *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setStyle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool stickyFocus () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_STICKYFOCUS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->stickyFocus (  ) );
  }
}


/*
QStyle * style () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_STYLE )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStyle * ptr = obj->style (  );
    _qt4xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}


/*
void update ( qreal x, qreal y, qreal w, qreal h )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_UPDATE1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->update ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void update ( const QRectF & rect = QRectF() )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_UPDATE2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF par1 = ISNIL(1)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->update ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void update ( qreal x, qreal y, qreal w, qreal h )
//[2]void update ( const QRectF & rect = QRectF() )

HB_FUNC_STATIC( QGRAPHICSSCENE_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_UPDATE1 );
  }
  else if( ISBETWEEN(0,1) && (ISQRECTF(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_UPDATE2 );
  }
}

/*
QList<QGraphicsView *> views () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_VIEWS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGraphicsView *> list = obj->views (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSVIEW" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSVIEW" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QGraphicsView *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
qreal width () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_WIDTH )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->width (  );
    hb_retnd( r );
  }
}


/*
void advance ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ADVANCE )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->advance (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_CLEAR )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearSelection ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_CLEARSELECTION )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearSelection (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
