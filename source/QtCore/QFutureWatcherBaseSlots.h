/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QFUTUREWATCHERBASESLOTS_H
#define QFUTUREWATCHERBASESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QFutureWatcherBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QFutureWatcherBaseSlots: public QObject
{
  Q_OBJECT
  public:
  QFutureWatcherBaseSlots( QObject *parent = 0 );
  ~QFutureWatcherBaseSlots();
  public slots:
  void started();
  void finished();
  void canceled();
  void paused();
  void resumed();
  void resultReadyAt( int resultIndex );
  void resultsReadyAt( int beginIndex, int endIndex );
  void progressRangeChanged( int minimum, int maximum );
  void progressValueChanged( int progressValue );
  void progressTextChanged( const QString & progressText );
};

#endif /* QFUTUREWATCHERBASESLOTS_H */
