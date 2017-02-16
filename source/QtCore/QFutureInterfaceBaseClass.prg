/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMUTEX

CLASS QFutureInterfaceBase

   DATA pointer
   DATA class_id INIT Class_Id_QFutureInterfaceBase
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD reportStarted
   METHOD reportFinished
   METHOD reportCanceled
   METHOD reportResultsReady
   METHOD setRunnable
   METHOD setFilterMode
   METHOD setProgressRange
   METHOD progressMinimum
   METHOD progressMaximum
   METHOD isProgressUpdateNeeded
   METHOD setProgressValue
   METHOD progressValue
   METHOD setProgressValueAndText
   METHOD progressText
   METHOD setExpectedResultCount
   METHOD expectedResultCount
   METHOD resultCount
   METHOD queryState
   METHOD isRunning
   METHOD isStarted
   METHOD isCanceled
   METHOD isFinished
   METHOD isPaused
   METHOD isThrottled
   METHOD isResultReadyAt
   METHOD cancel
   METHOD setPaused
   METHOD togglePaused
   METHOD setThrottled
   METHOD waitForFinished
   METHOD waitForNextResult
   METHOD waitForResult
   METHOD waitForResume
   METHOD mutex
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QFutureInterfaceBase
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QFutureInterfaceBase
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QFutureInterfaceBase
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QFutureInterfaceBase
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QFutureInterfaceBase
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QFutureInterfaceBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFutureInterfaceBase>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QFutureInterfaceBase(State initialState = NoState)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEW1 )
{
  QFutureInterfaceBase * o = NULL;
  int par1 = ISNIL(1)? (int) QFutureInterfaceBase::NoState : hb_parni(1);
  o = new QFutureInterfaceBase (  (QFutureInterfaceBase::State) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFutureInterfaceBase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QFutureInterfaceBase(const QFutureInterfaceBase &other)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEW2 )
{
  QFutureInterfaceBase * o = NULL;
  QFutureInterfaceBase * par1 = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFutureInterfaceBase ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFutureInterfaceBase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QFutureInterfaceBase(State initialState = NoState)
//[2]QFutureInterfaceBase(const QFutureInterfaceBase &other)

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QFUTUREINTERFACEBASE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQFUTUREINTERFACEBASE(1) )
  {
    HB_FUNC_EXEC( QFUTUREINTERFACEBASE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_DELETE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void reportStarted()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_REPORTSTARTED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reportStarted (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reportFinished()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_REPORTFINISHED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reportFinished (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reportCanceled()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_REPORTCANCELED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reportCanceled (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void reportResultsReady(int beginIndex, int endIndex)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_REPORTRESULTSREADY )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->reportResultsReady ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRunnable(QRunnable *runnable)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETRUNNABLE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRunnable * par1 = (QRunnable *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRunnable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterMode(bool enable)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETFILTERMODE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFilterMode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProgressRange(int minimum, int maximum)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETPROGRESSRANGE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setProgressRange ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int progressMinimum() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_PROGRESSMINIMUM )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->progressMinimum (  ) );
  }
}


/*
int progressMaximum() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_PROGRESSMAXIMUM )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->progressMaximum (  ) );
  }
}


/*
bool isProgressUpdateNeeded() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISPROGRESSUPDATENEEDED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isProgressUpdateNeeded (  ) );
  }
}


/*
void setProgressValue(int progressValue)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETPROGRESSVALUE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setProgressValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int progressValue() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_PROGRESSVALUE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->progressValue (  ) );
  }
}


/*
void setProgressValueAndText(int progressValue, const QString &progressText)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETPROGRESSVALUEANDTEXT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setProgressValueAndText ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString progressText() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_PROGRESSTEXT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->progressText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setExpectedResultCount(int resultCount)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETEXPECTEDRESULTCOUNT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setExpectedResultCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int expectedResultCount()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_EXPECTEDRESULTCOUNT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->expectedResultCount (  ) );
  }
}


/*
int resultCount() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_RESULTCOUNT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->resultCount (  ) );
  }
}


/*
bool queryState(State state) const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_QUERYSTATE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->queryState (  (QFutureInterfaceBase::State) par1 ) );
  }
}


/*
bool isRunning() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISRUNNING )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isRunning (  ) );
  }
}


/*
bool isStarted() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISSTARTED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isStarted (  ) );
  }
}


/*
bool isCanceled() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISCANCELED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isCanceled (  ) );
  }
}


/*
bool isFinished() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISFINISHED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isFinished (  ) );
  }
}


/*
bool isPaused() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISPAUSED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isPaused (  ) );
  }
}


/*
bool isThrottled() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISTHROTTLED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isThrottled (  ) );
  }
}


/*
bool isResultReadyAt(int index) const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISRESULTREADYAT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isResultReadyAt ( par1 ) );
  }
}


/*
void cancel()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_CANCEL )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cancel (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaused(bool paused)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETPAUSED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setPaused ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void togglePaused()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_TOGGLEPAUSED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->togglePaused (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setThrottled(bool enable)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETTHROTTLED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setThrottled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void waitForFinished()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_WAITFORFINISHED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->waitForFinished (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool waitForNextResult()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_WAITFORNEXTRESULT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->waitForNextResult (  ) );
  }
}


/*
void waitForResult(int resultIndex)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_WAITFORRESULT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->waitForResult ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void waitForResume()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_WAITFORRESUME )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->waitForResume (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMutex *mutex() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_MUTEX )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMutex * ptr = obj->mutex (  );
    _qt4xhb_createReturnClass ( ptr, "QMUTEX" );
  }
}








#pragma ENDDUMP
