/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QCommonStyle INHERIT QStyle

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD generatedIconPixmap
   METHOD hitTestComplexControl
   METHOD pixelMetric
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCommonStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QCommonStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QCommonStyle ()
*/
HB_FUNC_STATIC( QCOMMONSTYLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCommonStyle * o = new QCommonStyle ();
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOMMONSTYLE_DELETE )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_DRAWCOMPLEXCONTROL )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawComplexControl ( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_DRAWCONTROL )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawControl ( (QStyle::ControlElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_DRAWPRIMITIVE )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawPrimitive ( (QStyle::PrimitiveElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual QPixmap generatedIconPixmap ( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_GENERATEDICONPIXMAP )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISQPIXMAP(2) && ISQSTYLEOPTION(3) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->generatedIconPixmap ( (QIcon::Mode) hb_parni(1), *PQPIXMAP(2), PQSTYLEOPTION(3) ) );
      _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
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
virtual SubControl hitTestComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_HITTESTCOMPLEXCONTROL )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPOINT(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      RENUM( obj->hitTestComplexControl ( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), *PQPOINT(3), OPQWIDGET(4,0) ) );
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
virtual int pixelMetric ( PixelMetric m, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_PIXELMETRIC )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      RINT( obj->pixelMetric ( (QStyle::PixelMetric) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) _qt4xhb_itemGetPtr(2), OPQWIDGET(3,0) ) );
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
virtual void polish ( QPalette & pal )
*/
void QCommonStyle_polish1 ()
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->polish ( *PQPALETTE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QApplication * app )
*/
void QCommonStyle_polish2 ()
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->polish ( PQAPPLICATION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QWidget * widget )
*/
void QCommonStyle_polish3 ()
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->polish ( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void polish ( QPalette & pal )
//[2]virtual void polish ( QApplication * app )
//[3]virtual void polish ( QWidget * widget )

HB_FUNC_STATIC( QCOMMONSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QCommonStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QCommonStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QCommonStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * opt, const QSize & csz, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_SIZEFROMCONTENTS )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeFromContents ( (QStyle::ContentsType) hb_parni(1), PQSTYLEOPTION(2), *PQSIZE(3), OPQWIDGET(4,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
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
virtual QPixmap standardPixmap ( StandardPixmap sp, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_STANDARDPIXMAP )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->standardPixmap ( (QStyle::StandardPixmap) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) _qt4xhb_itemGetPtr(2), OPQWIDGET(3,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
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
virtual int styleHint ( StyleHint sh, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * hret = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_STYLEHINT )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) && (ISQSTYLEHINTRETURN(4)||ISNIL(4)) )
    {
#endif
      RINT( obj->styleHint ( (QStyle::StyleHint) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) _qt4xhb_itemGetPtr(2), OPQWIDGET(3,0), ISNIL(4)? 0 : (QStyleHintReturn *) _qt4xhb_itemGetPtr(4) ) );
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
virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * opt, SubControl sc, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_SUBCONTROLRECT )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISNUM(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      QRect * ptr = new QRect( obj->subControlRect ( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), (QStyle::SubControl) hb_parni(3), OPQWIDGET(4,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
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
virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_SUBELEMENTRECT )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QRect * ptr = new QRect( obj->subElementRect ( (QStyle::SubElement) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
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
virtual void unpolish ( QWidget * widget )
*/
void QCommonStyle_unpolish1 ()
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->unpolish ( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unpolish ( QApplication * application )
*/
void QCommonStyle_unpolish2 ()
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->unpolish ( PQAPPLICATION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void unpolish ( QWidget * widget )
//[2]virtual void unpolish ( QApplication * application )

HB_FUNC_STATIC( QCOMMONSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QCommonStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QCommonStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP