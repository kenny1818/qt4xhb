%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDeclarativePropertyMap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDeclarativePropertyMap_release_codeblocks ();

class SlotsQDeclarativePropertyMap: public QObject
{
  Q_OBJECT

  public:
  SlotsQDeclarativePropertyMap(QObject *parent = 0);
  ~SlotsQDeclarativePropertyMap();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void valueChanged ( const QString & key, const QVariant & value );
};
