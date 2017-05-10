/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTABLEWIDGET_H
#define SLOTSQTABLEWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTableWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QTableWidget_release_codeblocks ();

class SlotsQTableWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQTableWidget(QObject *parent = 0);
  ~SlotsQTableWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void cellActivated ( int row, int column );
  void cellChanged ( int row, int column );
  void cellClicked ( int row, int column );
  void cellDoubleClicked ( int row, int column );
  void cellEntered ( int row, int column );
  void cellPressed ( int row, int column );
  void currentCellChanged ( int currentRow, int currentColumn, int previousRow, int previousColumn );
  void currentItemChanged ( QTableWidgetItem * current, QTableWidgetItem * previous );
  void itemActivated ( QTableWidgetItem * item );
  void itemChanged ( QTableWidgetItem * item );
  void itemClicked ( QTableWidgetItem * item );
  void itemDoubleClicked ( QTableWidgetItem * item );
  void itemEntered ( QTableWidgetItem * item );
  void itemPressed ( QTableWidgetItem * item );
  void itemSelectionChanged ();
};

#endif
