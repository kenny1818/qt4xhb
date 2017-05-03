/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTIME
#endif

CLASS QTime

   DATA pointer
   DATA class_id INIT Class_Id_QTime
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addMSecs
   METHOD addSecs
   METHOD elapsed
   METHOD hour
   METHOD isNull
   METHOD isValid1
   METHOD minute
   METHOD msec
   METHOD msecsTo
   METHOD restart
   METHOD second
   METHOD secsTo
   METHOD setHMS
   METHOD start
   METHOD toString1
   METHOD toString2
   METHOD toString
   METHOD currentTime
   METHOD fromString1
   METHOD fromString2
   METHOD fromString
   METHOD isValid2
   METHOD isValid
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTime
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTime>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTime()
*/
HB_FUNC_STATIC( QTIME_NEW1 )
{
  QTime * o = NULL;
  o = new QTime (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTime *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTime(int h, int m, int s = 0, int ms = 0)
*/
HB_FUNC_STATIC( QTIME_NEW2 )
{
  QTime * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? 0 : hb_parni(3);
  int par4 = ISNIL(4)? 0 : hb_parni(4);
  o = new QTime ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTime *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QTime()
//[2]QTime(int h, int m, int s = 0, int ms = 0)

HB_FUNC_STATIC( QTIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIME_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTIME_NEW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTIME_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTIME_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNIL(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTIME_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTIME_DELETE )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QTime addMSecs(int ms) const
*/
HB_FUNC_STATIC( QTIME_ADDMSECS )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTime * ptr = new QTime( obj->addMSecs ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


/*
QTime addSecs(int s) const
*/
HB_FUNC_STATIC( QTIME_ADDSECS )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTime * ptr = new QTime( obj->addSecs ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


/*
int elapsed() const
*/
HB_FUNC_STATIC( QTIME_ELAPSED )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->elapsed (  ) );
  }
}


/*
int hour() const
*/
HB_FUNC_STATIC( QTIME_HOUR )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->hour (  ) );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QTIME_ISNULL )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QTIME_ISVALID1 )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int minute() const
*/
HB_FUNC_STATIC( QTIME_MINUTE )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->minute (  ) );
  }
}


/*
int msec() const
*/
HB_FUNC_STATIC( QTIME_MSEC )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->msec (  ) );
  }
}


/*
int msecsTo(const QTime & t) const
*/
HB_FUNC_STATIC( QTIME_MSECSTO )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * par1 = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->msecsTo ( *par1 ) );
  }
}


/*
int restart()
*/
HB_FUNC_STATIC( QTIME_RESTART )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->restart (  ) );
  }
}


/*
int second() const
*/
HB_FUNC_STATIC( QTIME_SECOND )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->second (  ) );
  }
}


/*
int secsTo(const QTime & t) const
*/
HB_FUNC_STATIC( QTIME_SECSTO )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * par1 = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->secsTo ( *par1 ) );
  }
}


/*
bool setHMS(int h, int m, int s, int ms = 0)
*/
HB_FUNC_STATIC( QTIME_SETHMS )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = ISNIL(4)? 0 : hb_parni(4);
    hb_retl( obj->setHMS ( par1, par2, par3, par4 ) );
  }
}


/*
void start()
*/
HB_FUNC_STATIC( QTIME_START )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString toString(const QString & format) const
*/
HB_FUNC_STATIC( QTIME_TOSTRING1 )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toString ( PQSTRING(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString(Qt::DateFormat format = Qt::TextDate) const
*/
HB_FUNC_STATIC( QTIME_TOSTRING2 )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toString ( ISNIL(1)? Qt::TextDate : (Qt::DateFormat) hb_parni(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


//[1]QString toString(const QString & format) const
//[2]QString toString(Qt::DateFormat format = Qt::TextDate) const

HB_FUNC_STATIC( QTIME_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTIME_TOSTRING1 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTIME_TOSTRING2 );
  }
}


/*
QTime currentTime()
*/
HB_FUNC_STATIC( QTIME_CURRENTTIME )
{
  QTime * ptr = new QTime( QTime::currentTime (  ) );
  _qt4xhb_createReturnClass ( ptr, "QTIME", true );
}


/*
QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
*/
HB_FUNC_STATIC( QTIME_FROMSTRING1 )
{
  int par2 = ISNIL(2)? (int) Qt::TextDate : hb_parni(2);
  QTime * ptr = new QTime( QTime::fromString ( PQSTRING(1),  (Qt::DateFormat) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QTIME", true );
}


/*
QTime fromString(const QString & string, const QString & format)
*/
HB_FUNC_STATIC( QTIME_FROMSTRING2 )
{
  QTime * ptr = new QTime( QTime::fromString ( PQSTRING(1), PQSTRING(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QTIME", true );
}


//[1]QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
//[2]QTime fromString(const QString & string, const QString & format)

HB_FUNC_STATIC( QTIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTIME_FROMSTRING1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTIME_FROMSTRING2 );
  }
}

/*
bool isValid(int h, int m, int s, int ms = 0)
*/
HB_FUNC_STATIC( QTIME_ISVALID2 )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = ISNIL(4)? 0 : hb_parni(4);
  hb_retl( QTime::isValid ( par1, par2, par3, par4 ) );
}


//[1]bool isValid() const
//[2]bool isValid(int h, int m, int s, int ms = 0)

HB_FUNC_STATIC( QTIME_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNIL(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID2 );
  }
}


HB_FUNC_STATIC( QTIME_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTIME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTIME_NEWFROM );
}

HB_FUNC_STATIC( QTIME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTIME_NEWFROM );
}

HB_FUNC_STATIC( QTIME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTIME_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
