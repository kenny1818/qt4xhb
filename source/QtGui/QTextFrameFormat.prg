/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QTEXTLENGTH
#endif

CLASS QTextFrameFormat INHERIT QTextFormat

   METHOD new
   METHOD delete
   METHOD border
   METHOD borderBrush
   METHOD borderStyle
   METHOD bottomMargin
   METHOD height
   METHOD isValid
   METHOD leftMargin
   METHOD margin
   METHOD padding
   METHOD pageBreakPolicy
   METHOD position
   METHOD rightMargin
   METHOD setBorder
   METHOD setBorderBrush
   METHOD setBorderStyle
   METHOD setBottomMargin
   METHOD setHeight
   METHOD setLeftMargin
   METHOD setMargin
   METHOD setPadding
   METHOD setPageBreakPolicy
   METHOD setPosition
   METHOD setRightMargin
   METHOD setTopMargin
   METHOD setWidth
   METHOD topMargin
   METHOD width

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextFrameFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTextFrameFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextFrameFormat ()
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextFrameFormat * obj = new QTextFrameFormat();
    Qt4xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_DELETE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

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
qreal border () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDER )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->border() );
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
QBrush borderBrush () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDERBRUSH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->borderBrush() );
      Qt4xHb::createReturnClass( ptr, "QBRUSH", true );
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
BorderStyle borderStyle () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDERSTYLE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->borderStyle() );
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
qreal bottomMargin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BOTTOMMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->bottomMargin() );
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
QTextLength height () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_HEIGHT )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextLength * ptr = new QTextLength( obj->height() );
      Qt4xHb::createReturnClass( ptr, "QTEXTLENGTH", true );
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
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_ISVALID )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
qreal leftMargin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_LEFTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->leftMargin() );
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
qreal margin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_MARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->margin() );
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
qreal padding () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_PADDING )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->padding() );
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
PageBreakFlags pageBreakPolicy () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_PAGEBREAKPOLICY )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->pageBreakPolicy() );
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
Position position () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_POSITION )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->position() );
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
qreal rightMargin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_RIGHTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->rightMargin() );
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
void setBorder ( qreal width )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDER )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBorder( PQREAL(1) );
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
void setBorderBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDERBRUSH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBorderBrush( *PQBRUSH(1) );
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
void setBorderStyle ( BorderStyle style )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDERSTYLE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBorderStyle( (QTextFrameFormat::BorderStyle) hb_parni(1) );
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
void setBottomMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBOTTOMMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBottomMargin( PQREAL(1) );
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
void setHeight ( const QTextLength & height )
*/
void QTextFrameFormat_setHeight1()
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setHeight( *PQTEXTLENGTH(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeight ( qreal height )
*/
void QTextFrameFormat_setHeight2()
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setHeight( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setHeight ( const QTextLength & height )
[2]void setHeight ( qreal height )
*/

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT )
{
  if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setHeight1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setHeight2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setLeftMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETLEFTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLeftMargin( PQREAL(1) );
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
void setMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMargin( PQREAL(1) );
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
void setPadding ( qreal width )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPADDING )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPadding( PQREAL(1) );
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
void setPageBreakPolicy ( PageBreakFlags policy )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPAGEBREAKPOLICY )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPageBreakPolicy( (QTextFormat::PageBreakFlags) hb_parni(1) );
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
void setPosition ( Position policy )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPOSITION )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPosition( (QTextFrameFormat::Position) hb_parni(1) );
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
void setRightMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETRIGHTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setRightMargin( PQREAL(1) );
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
void setTopMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETTOPMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setTopMargin( PQREAL(1) );
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
void setWidth ( const QTextLength & width )
*/
void QTextFrameFormat_setWidth1()
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setWidth( *PQTEXTLENGTH(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidth ( qreal width )
*/
void QTextFrameFormat_setWidth2()
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setWidth( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setWidth ( const QTextLength & width )
[2]void setWidth ( qreal width )
*/

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH )
{
  if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setWidth1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setWidth2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal topMargin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_TOPMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->topMargin() );
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
QTextLength width () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_WIDTH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextLength * ptr = new QTextLength( obj->width() );
      Qt4xHb::createReturnClass( ptr, "QTEXTLENGTH", true );
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
