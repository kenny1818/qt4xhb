/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QSIZE
#endif

CLASS QStyleOptionViewItem INHERIT QStyleOption

   METHOD new
   METHOD displayAlignment
   METHOD setDisplayAlignment
   METHOD decorationAlignment
   METHOD setDecorationAlignment
   METHOD textElideMode
   METHOD setTextElideMode
   METHOD decorationPosition
   METHOD setDecorationPosition
   METHOD decorationSize
   METHOD setDecorationSize
   METHOD font
   METHOD setFont
   METHOD showDecorationSelected
   METHOD setShowDecorationSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionViewItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionViewItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleOptionViewItem()
*/
void QStyleOptionViewItem_new1()
{
  QStyleOptionViewItem * obj = new QStyleOptionViewItem();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QStyleOptionViewItem(const QStyleOptionViewItem &other)
*/
void QStyleOptionViewItem_new2()
{
  QStyleOptionViewItem * obj = new QStyleOptionViewItem( *PQSTYLEOPTIONVIEWITEM(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QStyleOptionViewItem(int version) (protected)
*/

/*
[1]QStyleOptionViewItem()
[2]QStyleOptionViewItem(const QStyleOptionViewItem &other) : QStyleOption(Version, Type)
[3]QStyleOptionViewItem(int version) (protected)
*/

HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionViewItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONVIEWITEM(1) )
  {
    QStyleOptionViewItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Alignment displayAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DISPLAYALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->displayAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDISPLAYALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->displayAlignment= (Qt::Alignment) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment decorationAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->decorationAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDECORATIONALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->decorationAlignment= (Qt::Alignment) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::TextElideMode textElideMode
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_TEXTELIDEMODE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textElideMode );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETTEXTELIDEMODE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->textElideMode= (Qt::TextElideMode) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Position decorationPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONPOSITION )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->decorationPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDECORATIONPOSITION )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->decorationPosition= (QStyleOptionViewItem::Position) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize decorationSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONSIZE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->decorationSize );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDECORATIONSIZE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->decorationSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont font
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_FONT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->font );
      Qt4xHb::createReturnClass( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETFONT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->font= *PQFONT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool showDecorationSelected
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SHOWDECORATIONSELECTED )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->showDecorationSelected );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETSHOWDECORATIONSELECTED )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->showDecorationSelected= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
