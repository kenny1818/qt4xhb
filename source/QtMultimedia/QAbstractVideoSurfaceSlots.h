/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTVIDEOSURFACE_H
#define SLOTSQABSTRACTVIDEOSURFACE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractVideoSurface>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAbstractVideoSurface_release_codeblocks ();
class SlotsQAbstractVideoSurface: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractVideoSurface(QObject *parent = 0);
  ~SlotsQAbstractVideoSurface();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void activeChanged(bool active);
  void surfaceFormatChanged(const QVideoSurfaceFormat &format);
  void supportedFormatsChanged();
};
#endif
