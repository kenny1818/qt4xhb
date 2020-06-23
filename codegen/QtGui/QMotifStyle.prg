%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCommonStyle

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMotifStyle ( bool useHighlightCols = false )
$constructor=|new|bool=false

$deleteMethod

$prototypeV2=void setUseHighlightColors( bool arg )

$prototypeV2=bool useHighlightColors() const

$prototype=virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=0

$prototype=virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * w = 0 ) const
$virtualMethod=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototypeV2=virtual bool event( QEvent * e )

$prototype=virtual int pixelMetric ( PixelMetric pm, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

$prototypeV2=virtual void polish( QPalette & pal )

$prototype=virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * opt, const QSize & contentsSize, const QWidget * widget = 0 ) const
$virtualMethod=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *=0

$prototypeV2=virtual QPalette standardPalette() const

$prototype=virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const
$virtualMethod=|QPixmap|standardPixmap|QStyle::StandardPixmap,const QStyleOption *,const QWidget *=0

$prototype=virtual int styleHint ( StyleHint hint, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

$prototype=virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * opt, SubControl sc, const QWidget * widget = 0 ) const
$virtualMethod=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *=0

$prototype=virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const
$virtualMethod=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *=0

#pragma ENDDUMP
