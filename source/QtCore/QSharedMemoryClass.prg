/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSharedMemory INHERIT QObject

   DATA class_id INIT Class_Id_QSharedMemory
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setKey
   METHOD key
   METHOD setNativeKey
   METHOD nativeKey
   METHOD create
   METHOD size
   METHOD attach
   METHOD isAttached
   METHOD detach
   METHOD data
   METHOD lock
   METHOD unlock
   METHOD error
   METHOD errorString
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSharedMemory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSharedMemory>

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
QSharedMemory(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_NEW1 )
{
  QSharedMemory * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSharedMemory ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSharedMemory *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QSharedMemory(const QString &key, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_NEW2 )
{
  QSharedMemory * o = NULL;
  QString par1 = hb_parc(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSharedMemory ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSharedMemory *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QSharedMemory(QObject *parent = 0)
//[2]QSharedMemory(const QString &key, QObject *parent = 0)

HB_FUNC_STATIC( QSHAREDMEMORY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSHAREDMEMORY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSHAREDMEMORY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSHAREDMEMORY_DELETE )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setKey(const QString &key)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_SETKEY )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setKey ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString key() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_KEY )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->key (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setNativeKey(const QString &key)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_SETNATIVEKEY )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setNativeKey ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString nativeKey() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_NATIVEKEY )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->nativeKey (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool create(int size, AccessMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_CREATE )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->create ( hb_parni(1), ISNIL(2)? QSharedMemory::ReadWrite : (QSharedMemory::AccessMode) hb_parni(2) ) );
  }
}


/*
int size() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_SIZE )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
bool attach(AccessMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ATTACH )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->attach ( ISNIL(1)? QSharedMemory::ReadWrite : (QSharedMemory::AccessMode) hb_parni(1) ) );
  }
}


/*
bool isAttached() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ISATTACHED )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isAttached (  ) );
  }
}


/*
bool detach()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_DETACH )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->detach (  ) );
  }
}


/*
void *data()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_DATA )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    void * retptr = obj->data (  );
  hb_retptr( (void *) retptr );
  }
}




/*
bool lock()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_LOCK )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->lock (  ) );
  }
}


/*
bool unlock()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_UNLOCK )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->unlock (  ) );
  }
}


/*
SharedMemoryError error() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ERROR )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error (  ) );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ERRORSTRING )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}





#pragma ENDDUMP
