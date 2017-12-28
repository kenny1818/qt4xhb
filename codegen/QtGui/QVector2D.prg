$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR2D
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QVector2D

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setX
   METHOD setY
   METHOD toPoint
   METHOD toPointF
   METHOD toVector3D
   METHOD toVector4D
   METHOD x
   METHOD y
   METHOD dotProduct

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QVector2D>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVector3D>
#include <QVector4D>

$prototype=QVector2D ()
$internalConstructor=|new1|

$prototype=QVector2D ( qreal xpos, qreal ypos )
$internalConstructor=|new2|qreal,qreal

$prototype=QVector2D ( const QPoint & point )
$internalConstructor=|new3|const QPoint &

$prototype=QVector2D ( const QPointF & point )
$internalConstructor=|new4|const QPointF &

$prototype=QVector2D ( const QVector3D & vector )
$internalConstructor=|new5|const QVector3D &

$prototype=QVector2D ( const QVector4D & vector )
$internalConstructor=|new6|const QVector4D &

//[1]QVector2D ()
//[2]QVector2D ( qreal xpos, qreal ypos )
//[3]QVector2D ( const QPoint & point )
//[4]QVector2D ( const QPointF & point )
//[5]QVector2D ( const QVector3D & vector )
//[6]QVector2D ( const QVector4D & vector )

HB_FUNC_STATIC( QVECTOR2D_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVector2D_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVector2D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector2D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector2D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QVector2D_new5();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QVector2D_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=qreal length () const
$method=|qreal|length|

$prototype=qreal lengthSquared () const
$method=|qreal|lengthSquared|

$prototype=void normalize ()
$method=|void|normalize|

$prototype=QVector2D normalized () const
$method=|QVector2D|normalized|

$prototype=void setX ( qreal x )
$method=|void|setX|qreal

$prototype=void setY ( qreal y )
$method=|void|setY|qreal

$prototype=QPoint toPoint () const
$method=|QPoint|toPoint|

$prototype=QPointF toPointF () const
$method=|QPointF|toPointF|

$prototype=QVector3D toVector3D () const
$method=|QVector3D|toVector3D|

$prototype=QVector4D toVector4D () const
$method=|QVector4D|toVector4D|

$prototype=qreal x () const
$method=|qreal|x|

$prototype=qreal y () const
$method=|qreal|y|

$prototype=static qreal dotProduct ( const QVector2D & v1, const QVector2D & v2 )
$staticMethod=|qreal|dotProduct|const QVector2D &,const QVector2D &

%% TODO: implementar fun��o
%% bool qFuzzyCompare ( const QVector2D & v1, const QVector2D & v2 )

$extraMethods

#pragma ENDDUMP
