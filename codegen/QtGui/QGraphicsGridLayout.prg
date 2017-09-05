$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsGridLayout INHERIT QGraphicsLayout

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addItem1
   METHOD addItem2
   METHOD addItem
   METHOD alignment
   METHOD columnAlignment
   METHOD columnCount
   METHOD columnMaximumWidth
   METHOD columnMinimumWidth
   METHOD columnPreferredWidth
   METHOD columnSpacing
   METHOD columnStretchFactor
   METHOD horizontalSpacing
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD removeItem
   METHOD rowAlignment
   METHOD rowCount
   METHOD rowMaximumHeight
   METHOD rowMinimumHeight
   METHOD rowPreferredHeight
   METHOD rowSpacing
   METHOD rowStretchFactor
   METHOD setAlignment
   METHOD setColumnAlignment
   METHOD setColumnFixedWidth
   METHOD setColumnMaximumWidth
   METHOD setColumnMinimumWidth
   METHOD setColumnPreferredWidth
   METHOD setColumnSpacing
   METHOD setColumnStretchFactor
   METHOD setHorizontalSpacing
   METHOD setRowAlignment
   METHOD setRowFixedHeight
   METHOD setRowMaximumHeight
   METHOD setRowMinimumHeight
   METHOD setRowPreferredHeight
   METHOD setRowSpacing
   METHOD setRowStretchFactor
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsGridLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsGridLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_NEW )
{
  QGraphicsLayoutItem * par1 = ISNIL(1)? 0 : (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGraphicsGridLayout * o = new QGraphicsGridLayout ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM1 )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    int par5 = hb_parni(5);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    obj->addItem ( par1, par2, par3, par4, par5, (Qt::Alignment) par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM2 )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
    obj->addItem ( par1, par2, par3, (Qt::Alignment) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
//[2]void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM )
{
  if( ISBETWEEN(5,6) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ADDITEM1 );
  }
  else if( ISBETWEEN(3,4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ADDITEM2 );
  }
}

/*
Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->alignment ( par1 ) );
  }
}

/*
Qt::Alignment columnAlignment ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->columnAlignment ( PINT(1) ) );
  }
}

/*
int columnCount () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNCOUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnCount () );
  }
}

/*
qreal columnMaximumWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNMAXIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->columnMaximumWidth ( PINT(1) ) );
  }
}

/*
qreal columnMinimumWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNMINIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->columnMinimumWidth ( PINT(1) ) );
  }
}

/*
qreal columnPreferredWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNPREFERREDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->columnPreferredWidth ( PINT(1) ) );
  }
}

/*
qreal columnSpacing ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->columnSpacing ( PINT(1) ) );
  }
}

/*
int columnStretchFactor ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnStretchFactor ( PINT(1) ) );
  }
}

/*
qreal horizontalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_HORIZONTALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->horizontalSpacing () );
  }
}

/*
QGraphicsLayoutItem * itemAt ( int row, int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT1 )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}

/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT2 )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->itemAt ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}

//[1]QGraphicsLayoutItem * itemAt ( int row, int column ) const
//[2]virtual QGraphicsLayoutItem * itemAt ( int index ) const

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ITEMAT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSGRIDLAYOUT_ITEMAT2 );
  }
}

/*
void removeItem ( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_REMOVEITEM )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment rowAlignment ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->rowAlignment ( PINT(1) ) );
  }
}

/*
int rowCount () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWCOUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rowCount () );
  }
}

/*
qreal rowMaximumHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWMAXIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->rowMaximumHeight ( PINT(1) ) );
  }
}

/*
qreal rowMinimumHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWMINIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->rowMinimumHeight ( PINT(1) ) );
  }
}

/*
qreal rowPreferredHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWPREFERREDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->rowPreferredHeight ( PINT(1) ) );
  }
}

/*
qreal rowSpacing ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->rowSpacing ( PINT(1) ) );
  }
}

/*
int rowStretchFactor ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rowStretchFactor ( PINT(1) ) );
  }
}

/*
void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsLayoutItem * par1 = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setAlignment ( par1, (Qt::Alignment) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnAlignment ( int column, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setColumnAlignment ( PINT(1), (Qt::Alignment) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnFixedWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNFIXEDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnFixedWidth ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnMaximumWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNMAXIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnMaximumWidth ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnMinimumWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNMINIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnMinimumWidth ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnPreferredWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNPREFERREDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnPreferredWidth ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnSpacing ( int column, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnSpacing ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnStretchFactor ( int column, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnStretchFactor ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETHORIZONTALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowAlignment ( int row, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setRowAlignment ( PINT(1), (Qt::Alignment) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowFixedHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWFIXEDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowFixedHeight ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowMaximumHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWMAXIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowMaximumHeight ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowMinimumHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWMINIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowMinimumHeight ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowPreferredHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWPREFERREDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowPreferredHeight ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowSpacing ( int row, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowSpacing ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowStretchFactor ( int row, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowStretchFactor ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETVERTICALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal verticalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_VERTICALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->verticalSpacing () );
  }
}

/*
virtual int count () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_INVALIDATE )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void removeAt ( int index )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_REMOVEAT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAt ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETGEOMETRY )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSizeF sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SIZEHINT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSizeF par2 = ISNIL(2)? QSizeF() : *(QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSizeF * ptr = new QSizeF( obj->sizeHint ( (Qt::SizeHint) par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

#pragma ENDDUMP
