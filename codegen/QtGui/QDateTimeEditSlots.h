%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDateTimeEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDateTimeEdit_release_codeblocks ();

class SlotsQDateTimeEdit: public QObject
{
  Q_OBJECT

  public:
  SlotsQDateTimeEdit(QObject *parent = 0);
  ~SlotsQDateTimeEdit();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void dateChanged ( const QDate & date );
  void dateTimeChanged ( const QDateTime & datetime );
  void timeChanged ( const QTime & time );
};