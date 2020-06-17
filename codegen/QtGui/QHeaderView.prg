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

$prototype=QHeaderView ( Qt::Orientation orientation, QWidget * parent = 0 )
$constructor=|new|Qt::Orientation,QWidget *=0

$deleteMethod

$prototypeV2=bool cascadingSectionResizes() const

$prototypeV2=int count() const

$prototypeV2=Qt::Alignment defaultAlignment() const

$prototypeV2=int defaultSectionSize() const

$prototypeV2=int hiddenSectionCount() const

$prototype=void hideSection ( int logicalIndex )
$method=|void|hideSection|int

$prototypeV2=bool highlightSections() const

$prototypeV2=bool isClickable() const

$prototypeV2=bool isMovable() const

$prototype=bool isSectionHidden ( int logicalIndex ) const
$method=|bool|isSectionHidden|int

$prototypeV2=bool isSortIndicatorShown() const

$prototypeV2=int length() const

$prototype=int logicalIndex ( int visualIndex ) const
$method=|int|logicalIndex|int

$prototype=int logicalIndexAt ( int position ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt1|int

$prototype=int logicalIndexAt ( int x, int y ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt2|int,int

$prototype=int logicalIndexAt ( const QPoint & pos ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt3|const QPoint &

/*
[1]int logicalIndexAt ( int position ) const
[2]int logicalIndexAt ( int x, int y ) const
[3]int logicalIndexAt ( const QPoint & pos ) const
*/

HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEXAT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_logicalIndexAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_logicalIndexAt2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QHeaderView_logicalIndexAt3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=logicalIndexAt

$prototypeV2=int minimumSectionSize() const

$prototype=void moveSection ( int from, int to )
$method=|void|moveSection|int,int

$prototypeV2=int offset() const

$prototypeV2=Qt::Orientation orientation() const

$prototype=ResizeMode resizeMode ( int logicalIndex ) const
$method=|QHeaderView::ResizeMode|resizeMode|int

$prototype=void resizeSection ( int logicalIndex, int size )
$method=|void|resizeSection|int,int

$prototype=void resizeSections ( QHeaderView::ResizeMode mode )
$method=|void|resizeSections|QHeaderView::ResizeMode

$prototype=bool restoreState ( const QByteArray & state )
$method=|bool|restoreState|const QByteArray &

$prototypeV2=QByteArray saveState() const

$prototype=int sectionPosition ( int logicalIndex ) const
$method=|int|sectionPosition|int

$prototype=int sectionSize ( int logicalIndex ) const
$method=|int|sectionSize|int

$prototype=int sectionSizeHint ( int logicalIndex ) const
$method=|int|sectionSizeHint|int

$prototype=int sectionViewportPosition ( int logicalIndex ) const
$method=|int|sectionViewportPosition|int

$prototypeV2=bool sectionsHidden() const

$prototypeV2=bool sectionsMoved() const

$prototype=void setCascadingSectionResizes ( bool enable )
$method=|void|setCascadingSectionResizes|bool

$prototype=void setClickable ( bool clickable )
$method=|void|setClickable|bool

$prototype=void setDefaultAlignment ( Qt::Alignment alignment )
$method=|void|setDefaultAlignment|Qt::Alignment

$prototype=void setDefaultSectionSize ( int size )
$method=|void|setDefaultSectionSize|int

$prototype=void setHighlightSections ( bool highlight )
$method=|void|setHighlightSections|bool

$prototype=void setMinimumSectionSize ( int size )
$method=|void|setMinimumSectionSize|int

$prototype=void setMovable ( bool movable )
$method=|void|setMovable|bool

$prototype=void setResizeMode ( ResizeMode mode )
$internalMethod=|void|setResizeMode,setResizeMode1|QHeaderView::ResizeMode

$prototype=void setResizeMode ( int logicalIndex, ResizeMode mode )
$internalMethod=|void|setResizeMode,setResizeMode2|int,QHeaderView::ResizeMode

/*
[1]void setResizeMode ( ResizeMode mode )
[2]void setResizeMode ( int logicalIndex, ResizeMode mode )
*/

HB_FUNC_STATIC( QHEADERVIEW_SETRESIZEMODE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_setResizeMode1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_setResizeMode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setResizeMode

$prototype=void setSectionHidden ( int logicalIndex, bool hide )
$method=|void|setSectionHidden|int,bool

$prototype=void setSortIndicator ( int logicalIndex, Qt::SortOrder order )
$method=|void|setSortIndicator|int,Qt::SortOrder

$prototype=void setSortIndicatorShown ( bool show )
$method=|void|setSortIndicatorShown|bool

$prototype=void setStretchLastSection ( bool stretch )
$method=|void|setStretchLastSection|bool

$prototype=void showSection ( int logicalIndex )
$method=|void|showSection|int

$prototypeV2=Qt::SortOrder sortIndicatorOrder() const

$prototypeV2=int sortIndicatorSection() const

$prototypeV2=bool stretchLastSection() const

$prototypeV2=int stretchSectionCount() const

$prototype=void swapSections ( int first, int second )
$method=|void|swapSections|int,int

$prototype=int visualIndex ( int logicalIndex ) const
$method=|int|visualIndex|int

$prototype=int visualIndexAt ( int position ) const
$method=|int|visualIndexAt|int

$prototypeV2=virtual void reset()

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototypeV2=virtual QSize sizeHint() const

$prototype=void headerDataChanged ( Qt::Orientation orientation, int logicalFirst, int logicalLast )
$method=|void|headerDataChanged|Qt::Orientation,int,int

$prototype=void setOffset ( int offset )
$method=|void|setOffset|int

$prototypeV2=void setOffsetToLastSection()

$prototype=void setOffsetToSectionPosition ( int visualIndex )
$method=|void|setOffsetToSectionPosition|int

$beginSignals
$signal=|geometriesChanged()
$signal=|sectionAutoResize(int,QHeaderView::ResizeMode)
$signal=|sectionClicked(int)
$signal=|sectionCountChanged(int,int)
$signal=|sectionDoubleClicked(int)
$signal=|sectionEntered(int)
$signal=|sectionHandleDoubleClicked(int)
$signal=|sectionMoved(int,int,int)
$signal=|sectionPressed(int)
$signal=|sectionResized(int,int,int)
$signal=|sortIndicatorChanged(int,Qt::SortOrder)
$endSignals

#pragma ENDDUMP
