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

$prototype=QStaticText ()
$internalConstructor=|new1|

$prototype=QStaticText ( const QString & text )
$internalConstructor=|new2|const QString &

$prototype=QStaticText ( const QStaticText & other )
$internalConstructor=|new3|const QStaticText &

/*
[1]QStaticText ()
[2]QStaticText ( const QString & text )
[3]QStaticText ( const QStaticText & other )
*/

HB_FUNC_STATIC( QSTATICTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStaticText_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStaticText_new2();
  }
  else if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
  {
    QStaticText_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QStaticText::PerformanceHint performanceHint() const

$prototype=void prepare ( const QTransform & matrix = QTransform(), const QFont & font = QFont() )
$method=|void|prepare|const QTransform &=QTransform(),const QFont &=QFont()

$prototype=void setPerformanceHint ( PerformanceHint performanceHint )
$method=|void|setPerformanceHint|QStaticText::PerformanceHint

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setTextFormat ( Qt::TextFormat textFormat )
$method=|void|setTextFormat|Qt::TextFormat

$prototype=void setTextOption ( const QTextOption & textOption )
$method=|void|setTextOption|const QTextOption &

$prototype=void setTextWidth ( qreal textWidth )
$method=|void|setTextWidth|qreal

$prototypeV2=QSizeF size() const

$prototypeV2=QString text() const

$prototypeV2=Qt::TextFormat textFormat() const

$prototypeV2=QTextOption textOption() const

$prototypeV2=qreal textWidth() const

$extraMethods

#pragma ENDDUMP
