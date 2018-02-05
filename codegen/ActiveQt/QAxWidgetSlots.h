%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAxWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAxWidget_release_codeblocks ();

class SlotsQAxWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQAxWidget(QObject *parent = 0);
  ~SlotsQAxWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void exception ( int code, const QString & source, const QString & desc, const QString & help );
  void propertyChanged ( const QString & name );
  void signal ( const QString & name, int argc, void * argv );
};
