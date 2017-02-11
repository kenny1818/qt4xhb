/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQLOCALSERVER_H
#define SLOTSQLOCALSERVER_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QLocalServer>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QLocalServer_release_codeblocks ();
class SlotsQLocalServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQLocalServer(QObject *parent = 0);
  ~SlotsQLocalServer();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void newConnection ();
};
#endif
