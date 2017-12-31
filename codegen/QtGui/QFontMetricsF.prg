$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QFontMetricsF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect
   METHOD descent
   METHOD elidedText
   METHOD height
   METHOD inFont
   METHOD inFontUcs4
   METHOD leading
   METHOD leftBearing
   METHOD lineSpacing
   METHOD lineWidth
   METHOD maxWidth
   METHOD minLeftBearing
   METHOD minRightBearing
   METHOD overlinePos
   METHOD rightBearing
   METHOD size
   METHOD strikeOutPos
   METHOD tightBoundingRect
   METHOD underlinePos
   METHOD width
   METHOD xHeight

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFontMetricsF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QFontMetricsF ( const QFont & font )
$internalConstructor=|new1|const QFont &

$prototype=QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
$internalConstructor=|new2|const QFont &,QPaintDevice *

$prototype=QFontMetricsF ( const QFontMetrics & fontMetrics )
$internalConstructor=|new3|const QFontMetrics &

$prototype=QFontMetricsF ( const QFontMetricsF & fm )
$internalConstructor=|new4|const QFontMetricsF &

//[1]QFontMetricsF ( const QFont & font )
//[2]QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetricsF ( const QFontMetrics & fontMetrics )
//[4]QFontMetricsF ( const QFontMetricsF & fm )

HB_FUNC_STATIC( QFONTMETRICSF_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontMetricsF_new1();
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    QFontMetricsF_new2();
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    QFontMetricsF_new3();
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICSF(1) )
  {
    QFontMetricsF_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=qreal ascent () const
$method=|qreal|ascent|

$prototype=qreal averageCharWidth () const
$method=|qreal|averageCharWidth|

$prototype=QRectF boundingRect ( const QString & text ) const
$internalMethod=|QRectF|boundingRect,boundingRect1|const QString &

$prototype=QRectF boundingRect ( QChar ch ) const
$internalMethod=|QRectF|boundingRect,boundingRect2|QChar

$prototype=QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
$internalMethod=|QRectF|boundingRect,boundingRect3|const QRectF &,int,const QString &,int=0,int *=0

//[1]QRectF boundingRect ( const QString & text ) const
//[2]QRectF boundingRect ( QChar ch ) const
//[3]QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontMetricsF_boundingRect1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QFontMetricsF_boundingRect2();
  }
  else if( ISBETWEEN(3,5) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISARRAY(5)||ISNIL(5)) )
  {
    QFontMetricsF_boundingRect3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=qreal descent () const
$method=|qreal|descent|

$prototype=QString elidedText ( const QString & text, Qt::TextElideMode mode, qreal width, int flags = 0 ) const
$method=|QString|elidedText|const QString &,Qt::TextElideMode,qreal,int=0

$prototype=qreal height () const
$method=|qreal|height|

$prototype=bool inFont ( QChar ch ) const
$method=|bool|inFont|QChar

$prototype=bool inFontUcs4 ( uint ch ) const
$method=|bool|inFontUcs4|uint

$prototype=qreal leading () const
$method=|qreal|leading|

$prototype=qreal leftBearing ( QChar ch ) const
$method=|qreal|leftBearing|QChar

$prototype=qreal lineSpacing () const
$method=|qreal|lineSpacing|

$prototype=qreal lineWidth () const
$method=|qreal|lineWidth|

$prototype=qreal maxWidth () const
$method=|qreal|maxWidth|

$prototype=qreal minLeftBearing () const
$method=|qreal|minLeftBearing|

$prototype=qreal minRightBearing () const
$method=|qreal|minRightBearing|

$prototype=qreal overlinePos () const
$method=|qreal|overlinePos|

$prototype=qreal rightBearing ( QChar ch ) const
$method=|qreal|rightBearing|QChar

$prototype=QSizeF size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
$method=|QSizeF|size|int,const QString &,int=0,int *=0

$prototype=qreal strikeOutPos () const
$method=|qreal|strikeOutPos|

$prototype=QRectF tightBoundingRect ( const QString & text ) const
$method=|QRectF|tightBoundingRect|const QString &

$prototype=qreal underlinePos () const
$method=|qreal|underlinePos|

$prototype=qreal width ( const QString & text ) const
$internalMethod=|qreal|width,width1|const QString &

$prototype=qreal width ( QChar ch ) const
$internalMethod=|qreal|width,width2|QChar

//[1]qreal width ( const QString & text ) const
//[2]qreal width ( QChar ch ) const

HB_FUNC_STATIC( QFONTMETRICSF_WIDTH )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontMetricsF_width1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QFontMetricsF_width2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=qreal xHeight () const
$method=|qreal|xHeight|

$extraMethods

#pragma ENDDUMP
