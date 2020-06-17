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

$prototype=QTreeWidgetItem ( int type = Type )
$internalConstructor=|new1|int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( const QStringList & strings, int type = Type )
$internalConstructor=|new2|const QStringList &,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidget * parent, int type = Type )
$internalConstructor=|new3|QTreeWidget *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidget * parent, const QStringList & strings, int type = Type )
$internalConstructor=|new4|QTreeWidget *,const QStringList &,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidget * parent, QTreeWidgetItem * preceding, int type = Type )
$internalConstructor=|new5|QTreeWidget *,QTreeWidgetItem *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidgetItem * parent, int type = Type )
$internalConstructor=|new6|QTreeWidgetItem *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidgetItem * parent, const QStringList & strings, int type = Type )
$internalConstructor=|new7|QTreeWidgetItem *,const QStringList &,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidgetItem * parent, QTreeWidgetItem * preceding, int type = Type )
$internalConstructor=|new8|QTreeWidgetItem *,QTreeWidgetItem *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( const QTreeWidgetItem & other )
$internalConstructor=|new9|const QTreeWidgetItem &

/*
[1]QTreeWidgetItem ( int type = Type )
[2]QTreeWidgetItem ( const QStringList & strings, int type = Type )
[3]QTreeWidgetItem ( QTreeWidget * parent, int type = Type )
[4]QTreeWidgetItem ( QTreeWidget * parent, const QStringList & strings, int type = Type )
[5]QTreeWidgetItem ( QTreeWidget * parent, QTreeWidgetItem * preceding, int type = Type )
[6]QTreeWidgetItem ( QTreeWidgetItem * parent, int type = Type )
[7]QTreeWidgetItem ( QTreeWidgetItem * parent, const QStringList & strings, int type = Type )
[8]QTreeWidgetItem ( QTreeWidgetItem * parent, QTreeWidgetItem * preceding, int type = Type )
[9]QTreeWidgetItem ( const QTreeWidgetItem & other )
*/

HB_FUNC_STATIC( QTREEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QTreeWidgetItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTreeWidgetItem_new2();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGET(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTreeWidgetItem_new3();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGET(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTreeWidgetItem_new4();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGET(1) && ISQTREEWIDGETITEM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTreeWidgetItem_new5();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTreeWidgetItem_new6();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGETITEM(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTreeWidgetItem_new7();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGETITEM(1) && ISQTREEWIDGETITEM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTreeWidgetItem_new8();
  }
  else if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
  {
    QTreeWidgetItem_new9(); // WARNING: conflita com [6] quando � apenas 1 par�metro
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void addChild ( QTreeWidgetItem * child )
$method=|void|addChild|QTreeWidgetItem *

$prototype=void addChildren ( const QList<QTreeWidgetItem *> & children )
$method=|void|addChildren|const QList<QTreeWidgetItem *> &

$prototype=QBrush background ( int column ) const
$method=|QBrush|background|int

$prototype=Qt::CheckState checkState ( int column ) const
$method=|Qt::CheckState|checkState|int

$prototype=QTreeWidgetItem * child ( int index ) const
$method=|QTreeWidgetItem *|child|int

$prototypeV2=int childCount() const

$prototypeV2=QTreeWidgetItem::ChildIndicatorPolicy childIndicatorPolicy() const

$prototypeV2=virtual QTreeWidgetItem * clone() const

$prototypeV2=int columnCount() const

$prototype=virtual QVariant data ( int column, int role ) const
$virtualMethod=|QVariant|data|int,int

$prototypeV2=Qt::ItemFlags flags() const

$prototype=QFont font ( int column ) const
$method=|QFont|font|int

$prototype=QBrush foreground ( int column ) const
$method=|QBrush|foreground|int

$prototype=QIcon icon ( int column ) const
$method=|QIcon|icon|int

$prototype=int indexOfChild ( QTreeWidgetItem * child ) const
$method=|int|indexOfChild|QTreeWidgetItem *

$prototype=void insertChild ( int index, QTreeWidgetItem * child )
$method=|void|insertChild|int,QTreeWidgetItem *

$prototype=void insertChildren ( int index, const QList<QTreeWidgetItem *> & children )
$method=|void|insertChildren|int,const QList<QTreeWidgetItem *> &

$prototypeV2=bool isDisabled() const

$prototypeV2=bool isExpanded() const

$prototypeV2=bool isFirstColumnSpanned() const

$prototypeV2=bool isHidden() const

$prototypeV2=bool isSelected() const

$prototypeV2=QTreeWidgetItem * parent() const

$prototype=virtual void read ( QDataStream & in )
$virtualMethod=|void|read|QDataStream &

$prototype=void removeChild ( QTreeWidgetItem * child )
$method=|void|removeChild|QTreeWidgetItem *

$prototype=void setBackground ( int column, const QBrush & brush )
$method=|void|setBackground|int,const QBrush &

$prototype=void setCheckState ( int column, Qt::CheckState state )
$method=|void|setCheckState|int,Qt::CheckState

$prototype=void setChildIndicatorPolicy ( QTreeWidgetItem::ChildIndicatorPolicy policy )
$method=|void|setChildIndicatorPolicy|QTreeWidgetItem::ChildIndicatorPolicy

$prototype=virtual void setData ( int column, int role, const QVariant & value )
$virtualMethod=|void|setData|int,int,const QVariant &

$prototype=void setDisabled ( bool disabled )
$method=|void|setDisabled|bool

$prototype=void setExpanded ( bool expand )
$method=|void|setExpanded|bool

$prototype=void setFirstColumnSpanned ( bool span )
$method=|void|setFirstColumnSpanned|bool

$prototype=void setFlags ( Qt::ItemFlags flags )
$method=|void|setFlags|Qt::ItemFlags

$prototype=void setFont ( int column, const QFont & font )
$method=|void|setFont|int,const QFont &

$prototype=void setForeground ( int column, const QBrush & brush )
$method=|void|setForeground|int,const QBrush &

$prototype=void setHidden ( bool hide )
$method=|void|setHidden|bool

$prototype=void setIcon ( int column, const QIcon & icon )
$method=|void|setIcon|int,const QIcon &

$prototype=void setSelected ( bool select )
$method=|void|setSelected|bool

$prototype=void setSizeHint ( int column, const QSize & size )
$method=|void|setSizeHint|int,const QSize &

$prototype=void setStatusTip ( int column, const QString & statusTip )
$method=|void|setStatusTip|int,const QString &

$prototype=void setText ( int column, const QString & text )
$method=|void|setText|int,const QString &

$prototype=void setTextAlignment ( int column, int alignment )
$method=|void|setTextAlignment|int,int

$prototype=void setToolTip ( int column, const QString & toolTip )
$method=|void|setToolTip|int,const QString &

$prototype=void setWhatsThis ( int column, const QString & whatsThis )
$method=|void|setWhatsThis|int,const QString &

$prototype=QSize sizeHint ( int column ) const
$method=|QSize|sizeHint|int

$prototype=void sortChildren ( int column, Qt::SortOrder order )
$method=|void|sortChildren|int,Qt::SortOrder

$prototype=QString statusTip ( int column ) const
$method=|QString|statusTip|int

$prototype=QTreeWidgetItem * takeChild ( int index )
$method=|QTreeWidgetItem *|takeChild|int

$prototype=QList<QTreeWidgetItem *> takeChildren ()
$method=|QList<QTreeWidgetItem *>|takeChildren|

$prototype=QString text ( int column ) const
$method=|QString|text|int

$prototype=int textAlignment ( int column ) const
$method=|int|textAlignment|int

$prototype=QString toolTip ( int column ) const
$method=|QString|toolTip|int

$prototypeV2=QTreeWidget * treeWidget() const

$prototypeV2=int type() const

$prototype=QString whatsThis ( int column ) const
$method=|QString|whatsThis|int

$prototype=prototype=virtual void write ( QDataStream & out ) const
$virtualMethod=|void|write|QDataStream &

$extraMethods

#pragma ENDDUMP
