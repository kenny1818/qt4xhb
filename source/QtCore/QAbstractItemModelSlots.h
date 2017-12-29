/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTITEMMODEL_H
#define SLOTSQABSTRACTITEMMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractItemModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAbstractItemModel_release_codeblocks ();

class SlotsQAbstractItemModel: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractItemModel(QObject *parent = 0);
  ~SlotsQAbstractItemModel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void columnsAboutToBeInserted ( const QModelIndex & parent, int start, int end );
  void columnsAboutToBeMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn );
  void columnsAboutToBeRemoved ( const QModelIndex & parent, int start, int end );
  void columnsInserted ( const QModelIndex & parent, int start, int end );
  void columnsMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn );
  void columnsRemoved ( const QModelIndex & parent, int start, int end );
  void dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight );
  void headerDataChanged ( Qt::Orientation orientation, int first, int last );
  void layoutAboutToBeChanged ();
  void layoutChanged ();
  void modelAboutToBeReset ();
  void modelReset ();
  void rowsAboutToBeInserted ( const QModelIndex & parent, int start, int end );
  void rowsAboutToBeMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow );
  void rowsAboutToBeRemoved ( const QModelIndex & parent, int start, int end );
  void rowsInserted ( const QModelIndex & parent, int start, int end );
  void rowsMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow );
  void rowsRemoved ( const QModelIndex & parent, int start, int end );
};

#endif
