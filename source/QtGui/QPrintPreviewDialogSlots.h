/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQPRINTPREVIEWDIALOG_H
#define SLOTSQPRINTPREVIEWDIALOG_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QPrintPreviewDialog>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QPrintPreviewDialog_release_codeblocks ();
class SlotsQPrintPreviewDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQPrintPreviewDialog(QObject *parent = 0);
  ~SlotsQPrintPreviewDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void paintRequested ( QPrinter * printer );
};
#endif
