/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSTANDARDITEMMODEL_H
#define SLOTSQSTANDARDITEMMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QStandardItemModel>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QStandardItemModel_release_codeblocks ();

class SlotsQStandardItemModel: public QObject
{
  Q_OBJECT

  public:
  SlotsQStandardItemModel(QObject *parent = 0);
  ~SlotsQStandardItemModel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void itemChanged(QStandardItem *item);
};

#endif
