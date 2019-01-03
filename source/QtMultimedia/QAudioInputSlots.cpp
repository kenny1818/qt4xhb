/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAudioInputSlots.h"

QAudioInputSlots::QAudioInputSlots(QObject *parent) : QObject(parent)
{
}

QAudioInputSlots::~QAudioInputSlots()
{
}
void QAudioInputSlots::stateChanged( QAudio::State state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAudio::State)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAUDIOINPUT" );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}
void QAudioInputSlots::notify()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "notify()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAUDIOINPUT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QAudioInputSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAudioInputSlots * s = QCoreApplication::instance()->findChild<QAudioInputSlots *>();

    if( s == NULL )
    {
      s = new QAudioInputSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
