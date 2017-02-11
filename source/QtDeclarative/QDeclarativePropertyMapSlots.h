/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDECLARATIVEPROPERTYMAP_H
#define SLOTSQDECLARATIVEPROPERTYMAP_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDeclarativePropertyMap>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QDeclarativePropertyMap_release_codeblocks ();
class SlotsQDeclarativePropertyMap: public QObject
{
  Q_OBJECT
  public:
  SlotsQDeclarativePropertyMap(QObject *parent = 0);
  ~SlotsQDeclarativePropertyMap();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void valueChanged ( const QString & key, const QVariant & value );
};
#endif
