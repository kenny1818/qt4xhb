/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QNETWORKREPLYSLOTS_H
#define QNETWORKREPLYSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QNetworkReply>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

#include <QSslError>

class QNetworkReplySlots: public QObject
{
  Q_OBJECT
  public:
  QNetworkReplySlots(QObject *parent = 0);
  ~QNetworkReplySlots();
  public slots:
  void downloadProgress( qint64 bytesReceived, qint64 bytesTotal );
  void error( QNetworkReply::NetworkError code );
  void finished();
  void metaDataChanged();
  void sslErrors( const QList<QSslError> & errors );
  void uploadProgress( qint64 bytesSent, qint64 bytesTotal );
};

#endif /* QNETWORKREPLYSLOTS_H */
