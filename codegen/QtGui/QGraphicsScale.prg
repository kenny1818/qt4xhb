%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

$beginClassFrom=QGraphicsTransform

   METHOD new
   METHOD delete
   METHOD origin
   METHOD setOrigin
   METHOD setXScale
   METHOD setYScale
   METHOD setZScale
   METHOD xScale
   METHOD yScale
   METHOD zScale
   METHOD applyTo

   METHOD onOriginChanged
   METHOD onScaleChanged
   METHOD onXScaleChanged
   METHOD onYScaleChanged
   METHOD onZScaleChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsScale ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QVector3D origin () const
$method=|QVector3D|origin|

$prototype=void setOrigin ( const QVector3D & point )
$method=|void|setOrigin|const QVector3D &

$prototype=void setXScale ( qreal )
$method=|void|setXScale|qreal

$prototype=void setYScale ( qreal )
$method=|void|setYScale|qreal

$prototype=void setZScale ( qreal )
$method=|void|setZScale|qreal

$prototype=qreal xScale () const
$method=|qreal|xScale|

$prototype=qreal yScale () const
$method=|qreal|yScale|

$prototype=qreal zScale () const
$method=|qreal|zScale|

$prototype=virtual void applyTo ( QMatrix4x4 * matrix ) const
$virtualMethod=|void|applyTo|QMatrix4x4 *

$beginSignals
$signal=|originChanged()
$signal=|scaleChanged()
$signal=|xScaleChanged()
$signal=|yScaleChanged()
$signal=|zScaleChanged()
$endSignals

#pragma ENDDUMP
