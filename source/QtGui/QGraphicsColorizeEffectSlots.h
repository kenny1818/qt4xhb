/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSCOLORIZEEFFECT_H
#define SLOTSQGRAPHICSCOLORIZEEFFECT_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsColorizeEffect>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QGraphicsColorizeEffect_release_codeblocks ();
class SlotsQGraphicsColorizeEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsColorizeEffect(QObject *parent = 0);
  ~SlotsQGraphicsColorizeEffect();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void colorChanged ( const QColor & color );
  void strengthChanged ( qreal strength );
};
#endif
