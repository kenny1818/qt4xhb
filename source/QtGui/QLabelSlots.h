/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLABELSLOTS_H
#define QLABELSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QLabel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QLabelSlots: public QObject
{
  Q_OBJECT
  public:
  QLabelSlots( QObject *parent = 0 );
  ~QLabelSlots();
  public slots:
  void linkActivated( const QString & link );
  void linkHovered( const QString & link );
};

#endif /* QLABELSLOTS_H */
