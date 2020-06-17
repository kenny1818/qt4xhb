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

$beginClassFrom=QFrame

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSplitter ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
$internalConstructor=|new2|Qt::Orientation,QWidget *=0

/*
[1]QSplitter ( QWidget * parent = 0 )
[2]QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QSPLITTER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QSplitter_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QSplitter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void addWidget ( QWidget * widget )
$method=|void|addWidget|QWidget *

$prototypeV2=bool childrenCollapsible() const

$prototypeV2=int count() const

$prototype=void getRange ( int index, int * min, int * max ) const
$method=|void|getRange|int,int *,int *

$prototype=QSplitterHandle * handle ( int index ) const
$method=|QSplitterHandle *|handle|int

$prototypeV2=int handleWidth() const

$prototype=int indexOf ( QWidget * widget ) const
$method=|int|indexOf|QWidget *

$prototype=void insertWidget ( int index, QWidget * widget )
$method=|void|insertWidget|int,QWidget *

$prototype=bool isCollapsible ( int index ) const
$method=|bool|isCollapsible|int

$prototypeV2=bool opaqueResize() const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=void refresh()

$prototype=bool restoreState ( const QByteArray & state )
$method=|bool|restoreState|const QByteArray &

$prototypeV2=QByteArray saveState() const

$prototype=void setChildrenCollapsible ( bool )
$method=|void|setChildrenCollapsible|bool

$prototype=void setCollapsible ( int index, bool collapse )
$method=|void|setCollapsible|int,bool

$prototype=void setHandleWidth ( int )
$method=|void|setHandleWidth|int

$prototype=void setOpaqueResize ( bool opaque = true )
$method=|void|setOpaqueResize|bool=true

$prototype=void setOrientation ( Qt::Orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setSizes ( const QList<int> & list )
$method=|void|setSizes|const QList<int> &

$prototype=void setStretchFactor ( int index, int stretch )
$method=|void|setStretchFactor|int,int

$prototype=QList<int> sizes () const
$method=|QList<int>|sizes|

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$beginSignals
$signal=|splitterMoved(int,int)
$endSignals

#pragma ENDDUMP
