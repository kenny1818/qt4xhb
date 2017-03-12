/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QGRAPHICSITEM
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEPOLICY
#endif

CLASS QGraphicsLayoutItem INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsLayoutItem
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD contentsRect
   METHOD effectiveSizeHint
   METHOD geometry
   METHOD getContentsMargins
   METHOD graphicsItem
   METHOD isLayout
   METHOD maximumHeight
   METHOD maximumSize
   METHOD maximumWidth
   METHOD minimumHeight
   METHOD minimumSize
   METHOD minimumWidth
   METHOD ownedByLayout
   METHOD parentLayoutItem
   METHOD preferredHeight
   METHOD preferredSize
   METHOD preferredWidth
   METHOD setGeometry
   METHOD setMaximumHeight
   METHOD setMaximumSize1
   METHOD setMaximumSize2
   METHOD setMaximumSize
   METHOD setMaximumWidth
   METHOD setMinimumHeight
   METHOD setMinimumSize1
   METHOD setMinimumSize2
   METHOD setMinimumSize
   METHOD setMinimumWidth
   METHOD setParentLayoutItem
   METHOD setPreferredHeight
   METHOD setPreferredSize1
   METHOD setPreferredSize2
   METHOD setPreferredSize
   METHOD setPreferredWidth
   METHOD setSizePolicy1
   METHOD setSizePolicy2
   METHOD setSizePolicy
   METHOD sizePolicy
   METHOD updateGeometry
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsLayoutItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsLayoutItem>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_DELETE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRectF contentsRect () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_CONTENTSRECT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->contentsRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QSizeF effectiveSizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_EFFECTIVESIZEHINT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSizeF par2 = ISNIL(2)? QSizeF() : *(QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSizeF * ptr = new QSizeF( obj->effectiveSizeHint (  (Qt::SizeHint) par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QRectF geometry () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_GEOMETRY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->geometry (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_GETCONTENTSMARGINS )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QGraphicsItem * graphicsItem () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_GRAPHICSITEM )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->graphicsItem (  );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


/*
bool isLayout () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_ISLAYOUT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isLayout (  ) );
  }
}


/*
qreal maximumHeight () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MAXIMUMHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->maximumHeight (  );
    hb_retnd( r );
  }
}


/*
QSizeF maximumSize () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MAXIMUMSIZE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->maximumSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
qreal maximumWidth () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MAXIMUMWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->maximumWidth (  );
    hb_retnd( r );
  }
}


/*
qreal minimumHeight () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MINIMUMHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->minimumHeight (  );
    hb_retnd( r );
  }
}


/*
QSizeF minimumSize () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MINIMUMSIZE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->minimumSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
qreal minimumWidth () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MINIMUMWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->minimumWidth (  );
    hb_retnd( r );
  }
}


/*
bool ownedByLayout () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_OWNEDBYLAYOUT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->ownedByLayout (  ) );
  }
}


/*
QGraphicsLayoutItem * parentLayoutItem () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PARENTLAYOUTITEM )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->parentLayoutItem (  );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}


/*
qreal preferredHeight () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PREFERREDHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->preferredHeight (  );
    hb_retnd( r );
  }
}


/*
QSizeF preferredSize () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PREFERREDSIZE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->preferredSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
qreal preferredWidth () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PREFERREDWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->preferredWidth (  );
    hb_retnd( r );
  }
}


/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETGEOMETRY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumHeight ( qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setMaximumHeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumSize ( const QSizeF & size )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE1 )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMaximumSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumSize ( qreal w, qreal h )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE2 )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setMaximumSize ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setMaximumSize ( const QSizeF & size )
//[2]void setMaximumSize ( qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE2 );
  }
}

/*
void setMaximumWidth ( qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setMaximumWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumHeight ( qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setMinimumHeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumSize ( const QSizeF & size )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE1 )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMinimumSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumSize ( qreal w, qreal h )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE2 )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setMinimumSize ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE2 );
  }
}

/*
void setMinimumWidth ( qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setMinimumWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setParentLayoutItem ( QGraphicsLayoutItem * parent )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPARENTLAYOUTITEM )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setParentLayoutItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreferredHeight ( qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPreferredHeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreferredSize ( const QSizeF & size )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE1 )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPreferredSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreferredSize ( qreal w, qreal h )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE2 )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setPreferredSize ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE2 );
  }
}

/*
void setPreferredWidth ( qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPreferredWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizePolicy ( const QSizePolicy & policy )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETSIZEPOLICY1 )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizePolicy * par1 = (QSizePolicy *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSizePolicy ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETSIZEPOLICY2 )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = ISNIL(3)? (int) QSizePolicy::DefaultType : hb_parni(3);
    obj->setSizePolicy (  (QSizePolicy::Policy) par1,  (QSizePolicy::Policy) par2,  (QSizePolicy::ControlType) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setSizePolicy ( const QSizePolicy & policy )
//[2]void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_SETSIZEPOLICY1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_SETSIZEPOLICY2 );
  }
}

/*
QSizePolicy sizePolicy () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SIZEPOLICY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizePolicy * ptr = new QSizePolicy( obj->sizePolicy (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEPOLICY", true );
  }
}


/*
virtual void updateGeometry ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_UPDATEGEOMETRY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updateGeometry (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
