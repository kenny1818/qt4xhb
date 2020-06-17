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

$prototype=QPainterPathStroker ()
$constructor=|new|

$deleteMethod

$prototypeV2=Qt::PenCapStyle capStyle() const

$prototype=QPainterPath createStroke ( const QPainterPath & path ) const
$method=|QPainterPath|createStroke|const QPainterPath &

$prototypeV2=qreal curveThreshold() const

$prototypeV2=qreal dashOffset() const

$prototype=QVector<qreal> dashPattern () const
$method=|QVector<qreal>|dashPattern|

$prototypeV2=Qt::PenJoinStyle joinStyle() const

$prototypeV2=qreal miterLimit() const

$prototype=void setCapStyle ( Qt::PenCapStyle style )
$method=|void|setCapStyle|Qt::PenCapStyle

$prototype=void setCurveThreshold ( qreal threshold )
$method=|void|setCurveThreshold|qreal

$prototype=void setDashOffset ( qreal offset )
$method=|void|setDashOffset|qreal

$prototype=void setDashPattern ( Qt::PenStyle style )
$internalMethod=|void|setDashPattern,setDashPattern1|Qt::PenStyle

$prototype=void setDashPattern ( const QVector<qreal> & dashPattern )
$internalMethod=|void|setDashPattern,setDashPattern2|const QVector<qreal> &

/*
[1]void setDashPattern ( Qt::PenStyle style )
[2]void setDashPattern ( const QVector<qreal> & dashPattern )
*/

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPainterPathStroker_setDashPattern1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPainterPathStroker_setDashPattern2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setDashPattern

$prototype=void setJoinStyle ( Qt::PenJoinStyle style )
$method=|void|setJoinStyle|Qt::PenJoinStyle

$prototype=void setMiterLimit ( qreal limit )
$method=|void|setMiterLimit|qreal

$prototype=void setWidth ( qreal width )
$method=|void|setWidth|qreal

$prototypeV2=qreal width() const

$extraMethods

#pragma ENDDUMP
