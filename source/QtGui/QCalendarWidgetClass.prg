/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QDATE
REQUEST QSIZE
#endif

CLASS QCalendarWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD dateEditAcceptDelay
   METHOD dateTextFormat2
   METHOD dateTextFormat
   METHOD firstDayOfWeek
   METHOD headerTextFormat
   METHOD horizontalHeaderFormat
   METHOD isDateEditEnabled
   METHOD isGridVisible
   METHOD isNavigationBarVisible
   METHOD maximumDate
   METHOD minimumDate
   METHOD monthShown
   METHOD selectedDate
   METHOD selectionMode
   METHOD setDateEditAcceptDelay
   METHOD setDateEditEnabled
   METHOD setDateTextFormat
   METHOD setFirstDayOfWeek
   METHOD setHeaderTextFormat
   METHOD setHorizontalHeaderFormat
   METHOD setMaximumDate
   METHOD setMinimumDate
   METHOD setSelectionMode
   METHOD setVerticalHeaderFormat
   METHOD setWeekdayTextFormat
   METHOD verticalHeaderFormat
   METHOD weekdayTextFormat
   METHOD yearShown
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setCurrentPage
   METHOD setDateRange
   METHOD setGridVisible
   METHOD setNavigationBarVisible
   METHOD setSelectedDate
   METHOD showNextMonth
   METHOD showNextYear
   METHOD showPreviousMonth
   METHOD showPreviousYear
   METHOD showSelectedDate
   METHOD showToday
   METHOD onActivated
   METHOD onClicked
   METHOD onCurrentPageChanged
   METHOD onSelectionChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCalendarWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QCalendarWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextCharFormat>

/*
QCalendarWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_NEW )
{
  QCalendarWidget * o = new QCalendarWidget ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QCALENDARWIDGET_DELETE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int dateEditAcceptDelay () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_DATEEDITACCEPTDELAY )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->dateEditAcceptDelay () );
  }
}



/*
QTextCharFormat dateTextFormat ( const QDate & date ) const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_DATETEXTFORMAT2 )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->dateTextFormat ( *PQDATE(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


//[1]QMap<QDate, QTextCharFormat> dateTextFormat () const
//[2]QTextCharFormat dateTextFormat ( const QDate & date ) const

HB_FUNC_STATIC( QCALENDARWIDGET_DATETEXTFORMAT )
{
  //if( ISNUMPAR(0) )
  //{
  //  HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT1 );
  //}
  //else if( ISNUMPAR(1) && ISQDATE(1) )
  //{
    HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT2 );
  //}
}

/*
Qt::DayOfWeek firstDayOfWeek () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_FIRSTDAYOFWEEK )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->firstDayOfWeek () );
  }
}


/*
QTextCharFormat headerTextFormat () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_HEADERTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->headerTextFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
HorizontalHeaderFormat horizontalHeaderFormat () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_HORIZONTALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->horizontalHeaderFormat () );
  }
}


/*
bool isDateEditEnabled () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ISDATEEDITENABLED )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDateEditEnabled () );
  }
}


/*
bool isGridVisible () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ISGRIDVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isGridVisible () );
  }
}


/*
bool isNavigationBarVisible () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ISNAVIGATIONBARVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNavigationBarVisible () );
  }
}


/*
QDate maximumDate () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MAXIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->maximumDate () );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
QDate minimumDate () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MINIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->minimumDate () );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
int monthShown () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MONTHSHOWN )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->monthShown () );
  }
}


/*
QDate selectedDate () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SELECTEDDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->selectedDate () );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
SelectionMode selectionMode () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SELECTIONMODE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->selectionMode () );
  }
}


/*
void setDateEditAcceptDelay ( int delay )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATEEDITACCEPTDELAY )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDateEditAcceptDelay ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDateEditEnabled ( bool enable )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATEEDITENABLED )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDateEditEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDateTextFormat ( const QDate & date, const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATETEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDateTextFormat ( *PQDATE(1), *PQTEXTCHARFORMAT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFirstDayOfWeek ( Qt::DayOfWeek dayOfWeek )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETFIRSTDAYOFWEEK )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFirstDayOfWeek ( (Qt::DayOfWeek) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeaderTextFormat ( const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETHEADERTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHeaderTextFormat ( *PQTEXTCHARFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalHeaderFormat ( HorizontalHeaderFormat format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETHORIZONTALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHorizontalHeaderFormat ( (QCalendarWidget::HorizontalHeaderFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumDate ( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETMAXIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaximumDate ( *PQDATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumDate ( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETMINIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMinimumDate ( *PQDATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelectionMode ( SelectionMode mode )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETSELECTIONMODE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionMode ( (QCalendarWidget::SelectionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalHeaderFormat ( VerticalHeaderFormat format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETVERTICALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalHeaderFormat ( (QCalendarWidget::VerticalHeaderFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWeekdayTextFormat ( Qt::DayOfWeek dayOfWeek, const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETWEEKDAYTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWeekdayTextFormat ( (Qt::DayOfWeek) hb_parni(1), *PQTEXTCHARFORMAT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
VerticalHeaderFormat verticalHeaderFormat () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_VERTICALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->verticalHeaderFormat () );
  }
}


/*
QTextCharFormat weekdayTextFormat ( Qt::DayOfWeek dayOfWeek ) const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_WEEKDAYTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextCharFormat * ptr = new QTextCharFormat( obj->weekdayTextFormat ( (Qt::DayOfWeek) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
int yearShown () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_YEARSHOWN )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->yearShown () );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MINIMUMSIZEHINT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SIZEHINT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setCurrentPage ( int year, int month )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETCURRENTPAGE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentPage ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDateRange ( const QDate & min, const QDate & max )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATERANGE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDateRange ( *PQDATE(1), *PQDATE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGridVisible ( bool show )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETGRIDVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGridVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNavigationBarVisible ( bool visible )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETNAVIGATIONBARVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNavigationBarVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelectedDate ( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETSELECTEDDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSelectedDate ( *PQDATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showNextMonth ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWNEXTMONTH )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showNextMonth ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showNextYear ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWNEXTYEAR )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showNextYear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showPreviousMonth ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWPREVIOUSMONTH )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showPreviousMonth ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showPreviousYear ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWPREVIOUSYEAR )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showPreviousYear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showSelectedDate ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWSELECTEDDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showSelectedDate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showToday ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWTODAY )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showToday ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
