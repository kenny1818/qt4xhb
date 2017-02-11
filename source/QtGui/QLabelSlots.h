/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQLABEL_H
#define SLOTSQLABEL_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QLabel>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QLabel_release_codeblocks ();
class SlotsQLabel: public QObject
{
  Q_OBJECT
  public:
  SlotsQLabel(QObject *parent = 0);
  ~SlotsQLabel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void linkActivated ( const QString & link );
  void linkHovered ( const QString & link );
};
#endif
