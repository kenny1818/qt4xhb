/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSPLITTER_H
#define SLOTSQSPLITTER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSplitter>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QSplitter_release_codeblocks ();

class SlotsQSplitter: public QObject
{
  Q_OBJECT

  public:
  SlotsQSplitter(QObject *parent = 0);
  ~SlotsQSplitter();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void splitterMoved ( int pos, int index );
};

#endif
