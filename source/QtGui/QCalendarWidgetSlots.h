/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCALENDARWIDGETSLOTS_H
#define QCALENDARWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QCalendarWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QCalendarWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QCalendarWidgetSlots( QObject *parent = 0 );
  ~QCalendarWidgetSlots();
  public slots:
  void activated( const QDate & date );
  void clicked( const QDate & date );
  void currentPageChanged( int year, int month );
  void selectionChanged();
};

#endif /* QCALENDARWIDGETSLOTS_H */
