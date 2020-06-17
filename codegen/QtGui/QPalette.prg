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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPalette ()
$internalConstructor=|new1|

$prototype=QPalette ( const QColor & button )
$internalConstructor=|new2|const QColor &

$prototype=QPalette ( Qt::GlobalColor button )
$internalConstructor=|new3|Qt::GlobalColor

$prototype=QPalette ( const QColor & button, const QColor & window )
$internalConstructor=|new4|const QColor &,const QColor &

$prototype=QPalette ( const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
$internalConstructor=|new5|const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &

$prototype=QPalette ( const QPalette & p )
$internalConstructor=|new6|const QPalette &

/*
[1]QPalette ()
[2]QPalette ( const QColor & button )
[3]QPalette ( Qt::GlobalColor button )
[4]QPalette ( const QColor & button, const QColor & window )
[5]QPalette ( const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
[6]QPalette ( const QPalette & p )
*/

HB_FUNC_STATIC( QPALETTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPalette_new1();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QPalette_new2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPalette_new3();
  }
  else if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    QPalette_new4();
  }
  else if( ISNUMPAR(9) && ISQBRUSH(1) && ISQBRUSH(2) && ISQBRUSH(3) && ISQBRUSH(4) && ISQBRUSH(5) && ISQBRUSH(6) && ISQBRUSH(7) && ISQBRUSH(8) && ISQBRUSH(9) )
  {
    QPalette_new5();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QPalette_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=const QBrush & alternateBase() const

$prototypeV2=const QBrush & base() const

$prototypeV2=const QBrush & brightText() const

$prototype=const QBrush & brush ( ColorGroup group, ColorRole role ) const
$internalMethod=|const QBrush &|brush,brush1|QPalette::ColorGroup,QPalette::ColorRole

$prototype=const QBrush & brush ( ColorRole role ) const
$internalMethod=|const QBrush &|brush,brush2|QPalette::ColorRole

/*
[1]const QBrush & brush ( ColorGroup group, ColorRole role ) const
[2]const QBrush & brush ( ColorRole role ) const
*/

HB_FUNC_STATIC( QPALETTE_BRUSH )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPalette_brush1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPalette_brush2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=brush

$prototypeV2=const QBrush & button() const

$prototypeV2=const QBrush & buttonText() const

$prototypeV2=qint64 cacheKey() const

$prototype=const QColor & color ( ColorGroup group, ColorRole role ) const
$internalMethod=|const QColor &|color,color1|QPalette::ColorGroup,QPalette::ColorRole

$prototype=const QColor & color ( ColorRole role ) const
$internalMethod=|const QColor &|color,color2|QPalette::ColorRole

/*
[1]const QColor & color ( ColorGroup group, ColorRole role ) const
[2]const QColor & color ( ColorRole role ) const
*/

HB_FUNC_STATIC( QPALETTE_COLOR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPalette_color1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPalette_color2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=color

$prototypeV2=QPalette::ColorGroup currentColorGroup() const

$prototypeV2=const QBrush & dark() const

$prototypeV2=const QBrush & highlight() const

$prototypeV2=const QBrush & highlightedText() const

$prototype=bool isBrushSet ( ColorGroup cg, ColorRole cr ) const
$method=|bool|isBrushSet|QPalette::ColorGroup,QPalette::ColorRole

$prototype=bool isCopyOf ( const QPalette & p ) const
$method=|bool|isCopyOf|const QPalette &

$prototype=bool isEqual ( ColorGroup cg1, ColorGroup cg2 ) const
$method=|bool|isEqual|QPalette::ColorGroup,QPalette::ColorGroup

$prototypeV2=const QBrush & light() const

$prototypeV2=const QBrush & link() const

$prototypeV2=const QBrush & linkVisited() const

$prototypeV2=const QBrush & mid() const

$prototypeV2=const QBrush & midlight() const

$prototype=QPalette resolve ( const QPalette & other ) const
$method=|QPalette|resolve|const QPalette &

$prototype=void setBrush ( ColorRole role, const QBrush & brush )
$internalMethod=|void|setBrush,setBrush1|QPalette::ColorRole,const QBrush &

$prototype=void setBrush ( ColorGroup group, ColorRole role, const QBrush & brush )
$internalMethod=|void|setBrush,setBrush2|QPalette::ColorGroup,QPalette::ColorRole,const QBrush &

/*
[1]void setBrush ( ColorRole role, const QBrush & brush )
[2]void setBrush ( ColorGroup group, ColorRole role, const QBrush & brush )
*/

HB_FUNC_STATIC( QPALETTE_SETBRUSH )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQBRUSH(2) )
  {
    QPalette_setBrush1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBRUSH(3) )
  {
    QPalette_setBrush2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setBrush

$prototype=void setColor ( ColorGroup group, ColorRole role, const QColor & color )
$internalMethod=|void|setColor,setColor1|QPalette::ColorGroup,QPalette::ColorRole,const QColor &

$prototype=void setColor ( ColorRole role, const QColor & color )
$internalMethod=|void|setColor,setColor2|QPalette::ColorRole,const QColor &

/*
[1]void setColor ( ColorGroup group, ColorRole role, const QColor & color )
[2]void setColor ( ColorRole role, const QColor & color )
*/

HB_FUNC_STATIC( QPALETTE_SETCOLOR )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && (ISQCOLOR(3)||ISCHAR(3)) )
  {
    QPalette_setColor1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && (ISQCOLOR(2)||ISCHAR(3)) )
  {
    QPalette_setColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setColor

$prototype=void setColorGroup ( ColorGroup cg, const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
$method=|void|setColorGroup|QPalette::ColorGroup,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &

$prototype=void setCurrentColorGroup ( ColorGroup cg )
$method=|void|setCurrentColorGroup|QPalette::ColorGroup

$prototypeV2=const QBrush & shadow() const

$prototypeV2=const QBrush & text() const

$prototypeV2=const QBrush & toolTipBase() const

$prototypeV2=const QBrush & toolTipText() const

$prototypeV2=const QBrush & window() const

$prototypeV2=const QBrush & windowText() const

$extraMethods

#pragma ENDDUMP
