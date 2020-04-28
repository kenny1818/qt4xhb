/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractSliderSlots.h"

QAbstractSliderSlots::QAbstractSliderSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractSliderSlots::~QAbstractSliderSlots()
{
}

void QAbstractSliderSlots::actionTriggered( int action )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "actionTriggered(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTSLIDER" );
    PHB_ITEM paction = hb_itemPutNI( NULL, action );

    hb_vmEvalBlockV( cb, 2, psender, paction );

    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void QAbstractSliderSlots::rangeChanged( int min, int max )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "rangeChanged(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTSLIDER" );
    PHB_ITEM pmin = hb_itemPutNI( NULL, min );
    PHB_ITEM pmax = hb_itemPutNI( NULL, max );

    hb_vmEvalBlockV( cb, 3, psender, pmin, pmax );

    hb_itemRelease( psender );
    hb_itemRelease( pmin );
    hb_itemRelease( pmax );
  }
}

void QAbstractSliderSlots::sliderMoved( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "sliderMoved(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTSLIDER" );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );

    hb_vmEvalBlockV( cb, 2, psender, pvalue );

    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void QAbstractSliderSlots::sliderPressed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "sliderPressed()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTSLIDER" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractSliderSlots::sliderReleased()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "sliderReleased()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTSLIDER" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractSliderSlots::valueChanged( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTSLIDER" );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );

    hb_vmEvalBlockV( cb, 2, psender, pvalue );

    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void QAbstractSliderSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractSlider * obj = (QAbstractSlider *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractSliderSlots * s = QCoreApplication::instance()->findChild<QAbstractSliderSlots *>();

    if( s == NULL )
    {
      s = new QAbstractSliderSlots();
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
