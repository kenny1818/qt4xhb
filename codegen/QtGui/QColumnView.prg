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

$beginClassFrom=QAbstractItemView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QColumnView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=QList<int> columnWidths() const

$prototypeV2=QWidget * previewWidget() const

$prototypeV2=bool resizeGripsVisible() const

$prototype=void setColumnWidths ( const QList<int> & list )
$method=|void|setColumnWidths|QList<int>

$prototype=void setPreviewWidget ( QWidget * widget )
$method=|void|setPreviewWidget|QWidget *

$prototype=void setResizeGripsVisible ( bool visible )
$method=|void|setResizeGripsVisible|bool

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QColumnView::ScrollHint=QColumnView::EnsureVisible

$prototypeV2=virtual void selectAll()

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototypeV2=virtual QSize sizeHint() const

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const
$virtualMethod=|QRect|visualRect|const QModelIndex &

$beginSignals
$signal=|updatePreviewWidget(QModelIndex)
$endSignals

#pragma ENDDUMP
