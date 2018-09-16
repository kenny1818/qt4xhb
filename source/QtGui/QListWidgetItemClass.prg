/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QFONT
REQUEST QICON
REQUEST QLISTWIDGET
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QListWidgetItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD background
   METHOD checkState
   METHOD clone
   METHOD data
   METHOD flags
   METHOD font
   METHOD foreground
   METHOD icon
   METHOD isHidden
   METHOD isSelected
   METHOD listWidget
   METHOD read
   METHOD setBackground
   METHOD setCheckState
   METHOD setData
   METHOD setFlags
   METHOD setFont
   METHOD setForeground
   METHOD setHidden
   METHOD setIcon
   METHOD setSelected
   METHOD setSizeHint
   METHOD setStatusTip
   METHOD setText
   METHOD setTextAlignment
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD statusTip
   METHOD text
   METHOD textAlignment
   METHOD toolTip
   METHOD type
   METHOD whatsThis
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QListWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QListWidgetItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QListWidgetItem ( QListWidget * parent = 0, int type = Type )
*/
void QListWidgetItem_new1 ()
{
  QListWidgetItem * o = new QListWidgetItem ( OPQLISTWIDGET(1,0), OPINT(2,QListWidgetItem::Type) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
*/
void QListWidgetItem_new2 ()
{
  QListWidgetItem * o = new QListWidgetItem ( PQSTRING(1), OPQLISTWIDGET(2,0), OPINT(3,QListWidgetItem::Type) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
*/
void QListWidgetItem_new3 ()
{
  QListWidgetItem * o = new QListWidgetItem ( ISOBJECT(1)? *(QIcon *) _qt4xhb_itemGetPtr(1) : QIcon(hb_parc(1)), PQSTRING(2), OPQLISTWIDGET(3,0), OPINT(4,QListWidgetItem::Type) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QListWidgetItem ( const QListWidgetItem & other )
*/
void QListWidgetItem_new4 ()
{
  QListWidgetItem * o = new QListWidgetItem ( *PQLISTWIDGETITEM(1) );
  _qt4xhb_returnNewObject( o, false );
}

//[1]QListWidgetItem ( QListWidget * parent = 0, int type = Type )
//[2]QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
//[3]QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
//[4]QListWidgetItem ( const QListWidgetItem & other )

HB_FUNC_STATIC( QLISTWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,2) && (ISQLISTWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QListWidgetItem_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQLISTWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QListWidgetItem_new2();
  }
  else if( ISBETWEEN(2,4) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQLISTWIDGET(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QListWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidgetItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLISTWIDGETITEM_DELETE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QBrush background () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_BACKGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->background () );
      _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::CheckState checkState () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_CHECKSTATE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->checkState () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QListWidgetItem * clone () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_CLONE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QListWidgetItem * ptr = obj->clone ();
      _qt4xhb_createReturnClass ( ptr, "QLISTWIDGETITEM", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant data ( int role ) const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_DATA )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->data ( PINT(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ItemFlags flags () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_FLAGS )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->flags () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_FONT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->font () );
      _qt4xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QBrush foreground () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_FOREGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->foreground () );
      _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_ICON )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon () );
      _qt4xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isHidden () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_ISHIDDEN )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isHidden () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isSelected () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_ISSELECTED )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSelected () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QListWidget * listWidget () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_LISTWIDGET )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QListWidget * ptr = obj->listWidget ();
      _qt4xhb_createReturnQWidgetClass ( ptr, "QLISTWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void read ( QDataStream & in )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_READ )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDATASTREAM(1) )
    {
      obj->read ( *PQDATASTREAM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETBACKGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setBackground ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCheckState ( Qt::CheckState state )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETCHECKSTATE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCheckState ( (Qt::CheckState) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setData ( int role, const QVariant & value )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETDATA )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
      obj->setData ( PINT(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlags ( Qt::ItemFlags flags )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETFLAGS )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFlags ( (Qt::ItemFlags) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETFONT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->setFont ( *PQFONT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setForeground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETFOREGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setForeground ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHidden ( bool hide )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETHIDDEN )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setHidden ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETICON )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQICON(1)||ISCHAR(1)) )
    {
      obj->setIcon ( ISOBJECT(1)? *(QIcon *) _qt4xhb_itemGetPtr(1) : QIcon(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelected ( bool select )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETSELECTED )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setSelected ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeHint ( const QSize & size )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETSIZEHINT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->setSizeHint ( *PQSIZE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStatusTip ( const QString & statusTip )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETSTATUSTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setStatusTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTEXT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextAlignment ( int alignment )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTEXTALIGNMENT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTextAlignment ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip ( const QString & toolTip )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTOOLTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setToolTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWhatsThis ( const QString & whatsThis )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETWHATSTHIS )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setWhatsThis ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SIZEHINT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString statusTip () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_STATUSTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->statusTip () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TEXT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int textAlignment () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TEXTALIGNMENT )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->textAlignment () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TOOLTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->toolTip () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int type () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TYPE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_WHATSTHIS )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->whatsThis () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void write ( QDataStream & out ) const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_WRITE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDATASTREAM(1) )
    {
      obj->write ( *PQDATASTREAM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QLISTWIDGETITEM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QLISTWIDGETITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QLISTWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QLISTWIDGETITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QLISTWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QLISTWIDGETITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QLISTWIDGETITEM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
