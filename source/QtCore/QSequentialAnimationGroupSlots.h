/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSEQUENTIALANIMATIONGROUP_H
#define SLOTSQSEQUENTIALANIMATIONGROUP_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSequentialAnimationGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QSequentialAnimationGroup_release_codeblocks ();

class SlotsQSequentialAnimationGroup: public QObject
{
  Q_OBJECT

  public:
  SlotsQSequentialAnimationGroup(QObject *parent = 0);
  ~SlotsQSequentialAnimationGroup();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentAnimationChanged ( QAbstractAnimation * current );
};

#endif
