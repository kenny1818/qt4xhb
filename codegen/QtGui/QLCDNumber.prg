%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QFrame

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLCDNumber ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QLCDNumber ( uint numDigits, QWidget * parent = 0 )
$internalConstructor=|new2|uint,QWidget *=0

/*
[1]QLCDNumber ( QWidget * parent = 0 )
[2]QLCDNumber ( uint numDigits, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QLCDNUMBER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QLCDNumber_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QLCDNumber_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=bool checkOverflow ( double num ) const
$method=|bool|checkOverflow,checkOverflow1|double

$prototype=bool checkOverflow ( int num ) const
$method=|bool|checkOverflow,checkOverflow2|int

/*
[1]bool checkOverflow ( double num ) const
[2]bool checkOverflow ( int num ) const
*/

%% TODO: reconhecer se � int ou double
HB_FUNC_STATIC( QLCDNUMBER_CHECKOVERFLOW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_CHECKOVERFLOW1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=checkOverflow

$prototypeV2=int digitCount() const

$prototypeV2=int intValue() const

$prototypeV2=QLCDNumber::Mode mode() const

$prototypeV2=QLCDNumber::SegmentStyle segmentStyle() const

$prototypeV2=void setDigitCount( int numDigits )

$prototypeV2=void setMode( QLCDNumber::Mode )

$prototypeV2=void setSegmentStyle( QLCDNumber::SegmentStyle )

$prototypeV2=bool smallDecimalPoint() const

$prototypeV2=double value() const

$prototypeV2=virtual QSize sizeHint() const

$prototype=void display ( const QString & s )
$method=|void|display,display1|const QString &

$prototype=void display ( double num )
$method=|void|display,display2|double

$prototype=void display ( int num )
$method=|void|display,display3|int

/*
[1]void display ( const QString & s )
[2]void display ( double num )
[3]void display ( int num )
*/

%% TODO: reconhecer se � int ou double

HB_FUNC_STATIC( QLCDNUMBER_DISPLAY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_DISPLAY1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_DISPLAY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=display

$prototypeV2=void setBinMode()

$prototypeV2=void setDecMode()

$prototypeV2=void setHexMode()

$prototypeV2=void setOctMode()

$prototypeV2=void setSmallDecimalPoint( bool )

$beginSignals
$signal=|overflow()
$endSignals

#pragma ENDDUMP
