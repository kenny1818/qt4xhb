/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSOBJECT_H
#define SLOTSQGRAPHICSOBJECT_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsObject>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QGraphicsObject_release_codeblocks ();
class SlotsQGraphicsObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsObject(QObject *parent = 0);
  ~SlotsQGraphicsObject();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void enabledChanged ();
  void opacityChanged ();
  void parentChanged ();
  void rotationChanged ();
  void scaleChanged ();
  void visibleChanged ();
  void xChanged ();
  void yChanged ();
  void zChanged ();
};
#endif
