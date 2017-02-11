/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTREEVIEW_H
#define SLOTSQTREEVIEW_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTreeView>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QTreeView_release_codeblocks ();
class SlotsQTreeView: public QObject
{
  Q_OBJECT
  public:
  SlotsQTreeView(QObject *parent = 0);
  ~SlotsQTreeView();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void collapsed ( const QModelIndex & index );
  void expanded ( const QModelIndex & index );
};
#endif
