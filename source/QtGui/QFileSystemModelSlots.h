/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQFILESYSTEMMODEL_H
#define SLOTSQFILESYSTEMMODEL_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QFileSystemModel>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QFileSystemModel_release_codeblocks ();
class SlotsQFileSystemModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQFileSystemModel(QObject *parent = 0);
  ~SlotsQFileSystemModel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void directoryLoaded ( const QString & path );
  void fileRenamed ( const QString & path, const QString & oldName, const QString & newName );
  void rootPathChanged ( const QString & newPath );
};
#endif
