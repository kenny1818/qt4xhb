/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDOUBLESPINBOX_H
#define SLOTSQDOUBLESPINBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDoubleSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QDoubleSpinBox_release_codeblocks ();

class SlotsQDoubleSpinBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQDoubleSpinBox(QObject *parent = 0);
  ~SlotsQDoubleSpinBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void valueChanged ( double d );
  void valueChanged ( const QString & text );
};

#endif
