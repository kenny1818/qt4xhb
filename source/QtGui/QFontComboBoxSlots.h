/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QFONTCOMBOBOXSLOTS_H
#define QFONTCOMBOBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QFontComboBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QFontComboBoxSlots: public QObject
{
  Q_OBJECT
  public:
  QFontComboBoxSlots( QObject *parent = 0 );
  ~QFontComboBoxSlots();
  public slots:
  void currentFontChanged( const QFont & font );
};

#endif /* QFONTCOMBOBOXSLOTS_H */
