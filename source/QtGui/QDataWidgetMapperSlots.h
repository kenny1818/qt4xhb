/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDATAWIDGETMAPPERSLOTS_H
#define QDATAWIDGETMAPPERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QDataWidgetMapper>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QDataWidgetMapperSlots: public QObject
{
  Q_OBJECT
  public:
  QDataWidgetMapperSlots( QObject *parent = 0 );
  ~QDataWidgetMapperSlots();
  public slots:
  void currentIndexChanged( int index );
};

#endif /* QDATAWIDGETMAPPERSLOTS_H */
