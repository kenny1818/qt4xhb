%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSystemTrayIcon>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QSystemTrayIcon_release_codeblocks ();

class SlotsQSystemTrayIcon: public QObject
{
  Q_OBJECT

  public:
  SlotsQSystemTrayIcon(QObject *parent = 0);
  ~SlotsQSystemTrayIcon();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void activated ( QSystemTrayIcon::ActivationReason reason );
  void messageClicked ();
};