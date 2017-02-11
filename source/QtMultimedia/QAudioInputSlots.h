/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQAUDIOINPUT_H
#define SLOTSQAUDIOINPUT_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAudioInput>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAudioInput_release_codeblocks ();
class SlotsQAudioInput: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioInput(QObject *parent = 0);
  ~SlotsQAudioInput();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void stateChanged ( QAudio::State state );
  void notify ();
};
#endif
