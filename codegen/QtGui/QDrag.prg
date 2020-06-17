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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QPoint>
#include <QtGui/QPixmap>
#include <QtCore/QMimeData>

$prototype=QDrag ( QWidget * dragSource )
$constructor=|new|QWidget *

$deleteMethod

$prototype=Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
$internalMethod=|Qt::DropAction|exec,exec1|Qt::DropActions=Qt::MoveAction

$prototype=Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )
$internalMethod=|Qt::DropAction|exec,exec2|Qt::DropActions,Qt::DropAction

/*
[1]Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
[2]Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )
*/

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QDrag_exec1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDrag_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=exec

$prototypeV2=QPoint hotSpot() const

$prototypeV2=QMimeData * mimeData() const

$prototypeV2=QPixmap pixmap() const

$prototype=void setDragCursor ( const QPixmap & cursor, Qt::DropAction action )
$method=|void|setDragCursor|const QPixmap &,Qt::DropAction

$prototype=void setHotSpot ( const QPoint & hotspot )
$method=|void|setHotSpot|const QPoint &

$prototype=void setMimeData ( QMimeData * data )
$method=|void|setMimeData|QMimeData *

$prototype=void setPixmap ( const QPixmap & pixmap )
$method=|void|setPixmap|const QPixmap &

$prototypeV2=QWidget * source() const

$prototypeV2=QWidget * target() const

$beginSignals
$signal=|actionChanged(Qt::DropAction)
$signal=|targetChanged(QWidget*)
$endSignals

#pragma ENDDUMP
