/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTSOCKETSLOTS_H
#define QABSTRACTSOCKETSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QAbstractSocketSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractSocketSlots(QObject *parent = 0);
  ~QAbstractSocketSlots();
  public slots:
  void connected();
  void disconnected();
  void error( QAbstractSocket::SocketError socketError );
  void hostFound();
  void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator );
  void stateChanged( QAbstractSocket::SocketState socketState );
};

#endif /* QABSTRACTSOCKETSLOTS_H */
