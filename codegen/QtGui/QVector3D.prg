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

#include <QtGui/QVector2D>
#include <QtGui/QVector4D>

$prototype=QVector3D ()
$internalConstructor=|new1|

$prototype=QVector3D ( qreal xpos, qreal ypos, qreal zpos )
$internalConstructor=|new2|qreal,qreal,qreal

$prototype=QVector3D ( const QPoint & point )
$internalConstructor=|new3|const QPoint &

$prototype=QVector3D ( const QPointF & point )
$internalConstructor=|new4|const QPointF &

$prototype=QVector3D ( const QVector2D & vector )
$internalConstructor=|new5|const QVector2D &

$prototype=QVector3D ( const QVector2D & vector, qreal zpos )
$internalConstructor=|new6|const QVector2D &,qreal

$prototype=QVector3D ( const QVector4D & vector )
$internalConstructor=|new7|const QVector4D &

/*
[1]QVector3D ()
[2]QVector3D ( qreal xpos, qreal ypos, qreal zpos )
[3]QVector3D ( const QPoint & point )
[4]QVector3D ( const QPointF & point )
[5]QVector3D ( const QVector2D & vector )
[6]QVector3D ( const QVector2D & vector, qreal zpos )
[7]QVector3D ( const QVector4D & vector )
*/

HB_FUNC_STATIC( QVECTOR3D_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVector3D_new1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QVector3D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector3D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector3D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    QVector3D_new5();
  }
  else if( ISNUMPAR(2) && ISQVECTOR2D(1) && ISNUM(2) )
  {
    QVector3D_new6();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QVector3D_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=qreal distanceToLine( const QVector3D & point, const QVector3D & direction ) const

$prototype=qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
$internalMethod=|qreal|distanceToPlane,distanceToPlane1|const QVector3D &,const QVector3D &

$prototype=qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const
$internalMethod=|qreal|distanceToPlane,distanceToPlane2|const QVector3D &,const QVector3D &,const QVector3D &

/*
[1]qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
[2]qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const
*/

HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    QVector3D_distanceToPlane1();
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    QVector3D_distanceToPlane2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=distanceToPlane

$prototypeV2=bool isNull() const

$prototypeV2=qreal length() const

$prototypeV2=qreal lengthSquared() const

$prototypeV2=void normalize()

$prototypeV2=QVector3D normalized() const

$prototypeV2=void setX( qreal x )

$prototypeV2=void setY( qreal y )

$prototypeV2=void setZ( qreal z )

$prototypeV2=QPoint toPoint() const

$prototypeV2=QPointF toPointF() const

$prototypeV2=QVector2D toVector2D() const

$prototypeV2=QVector4D toVector4D() const

$prototypeV2=qreal x() const

$prototypeV2=qreal y() const

$prototypeV2=qreal z() const

$prototypeV2=static QVector3D crossProduct( const QVector3D & v1, const QVector3D & v2 )

$prototypeV2=static qreal dotProduct( const QVector3D & v1, const QVector3D & v2 )

$prototype=static QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
$internalStaticMethod=|QVector3D|normal,normal1|const QVector3D &,const QVector3D &

$prototype=static QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )
$internalStaticMethod=|QVector3D|normal,normal2|const QVector3D &,const QVector3D &,const QVector3D &

/*
[1]QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
[2]QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )
*/

HB_FUNC_STATIC( QVECTOR3D_NORMAL )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    QVector3D_normal1();
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    QVector3D_normal2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=normal

%% TODO: implementar fun��o ?
%% bool qFuzzyCompare ( const QVector3D & v1, const QVector3D & v2 )

$extraMethods

#pragma ENDDUMP
