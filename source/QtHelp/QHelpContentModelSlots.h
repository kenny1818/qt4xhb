/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHELPCONTENTMODELSLOTS_H
#define QHELPCONTENTMODELSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtHelp/QHelpContentModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QHelpContentModelSlots: public QObject
{
  Q_OBJECT
  public:
  QHelpContentModelSlots(QObject *parent = 0);
  ~QHelpContentModelSlots();
  public slots:
  void contentsCreated();
  void contentsCreationStarted();
};

#endif /* QHELPCONTENTMODELSLOTS_H */
