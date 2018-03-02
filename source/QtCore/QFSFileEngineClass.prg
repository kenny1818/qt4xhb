/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QFILEINFO
#endif

CLASS QFSFileEngine INHERIT QAbstractFileEngine

   METHOD new
   METHOD delete
   METHOD open
   METHOD caseSensitive
   METHOD close
   METHOD copy
   METHOD fileFlags
   METHOD fileName
   METHOD fileTime
   METHOD flush
   METHOD handle
   METHOD isRelativePath
   METHOD isSequential
   METHOD link
   METHOD mkdir
   METHOD owner
   METHOD ownerId
   METHOD pos
   METHOD read
   METHOD readLine
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD seek
   METHOD setFileName
   METHOD setPermissions
   METHOD setSize
   METHOD size
   METHOD supportsExtension
   METHOD write
   METHOD currentPath
   METHOD drives
   METHOD homePath
   METHOD rootPath
   METHOD setCurrentPath
   METHOD tempPath

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFSFileEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFSFileEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

/*
QFSFileEngine ()
*/
void QFSFileEngine_new1 ()
{
  QFSFileEngine * o = new QFSFileEngine ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QFSFileEngine ( const QString & file )
*/
void QFSFileEngine_new2 ()
{
  QFSFileEngine * o = new QFSFileEngine ( PQSTRING(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QFSFileEngine ()
//[2]QFSFileEngine ( const QString & file )

HB_FUNC_STATIC( QFSFILEENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFSFileEngine_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFSFileEngine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFSFILEENGINE_DELETE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool open ( QIODevice::OpenMode openMode, FILE * fh )
*/
void QFSFileEngine_open1 ()
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1), (FILE *) hb_parptr(2) ) );
  }
}

/*
bool open ( QIODevice::OpenMode openMode, int fd )
*/
void QFSFileEngine_open2 ()
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1), PINT(2) ) );
  }
}

/*
bool open ( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
*/
void QFSFileEngine_open3 ()
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1), PINT(2), (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}

/*
bool open ( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
*/
void QFSFileEngine_open4 ()
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1), (FILE *) hb_parptr(2), (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}

/*
bool open ( QIODevice::OpenMode openMode, const RFile & file, QFile::FileHandleFlags handleFlags )
*/

//[1]bool open ( QIODevice::OpenMode openMode, FILE * fh )
//[2]bool open ( QIODevice::OpenMode openMode, int fd )
//[3]bool open ( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
//[4]bool open ( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
//[5]bool open ( QIODevice::OpenMode openMode, const RFile & file, QFile::FileHandleFlags handleFlags )

HB_FUNC_STATIC( QFSFILEENGINE_OPEN )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISPOINTER(2) )
  {
    QFSFileEngine_open1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QFSFileEngine_open2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QFSFileEngine_open3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
  {
    QFSFileEngine_open4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool caseSensitive () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_CASESENSITIVE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->caseSensitive () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool close ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_CLOSE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->close () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool copy ( const QString & copyName )
*/
HB_FUNC_STATIC( QFSFILEENGINE_COPY )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->copy ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual FileFlags fileFlags ( FileFlags type ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_FILEFLAGS )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RENUM( obj->fileFlags ( (QAbstractFileEngine::FileFlags) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString fileName ( FileName file ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_FILENAME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQSTRING( obj->fileName ( (QAbstractFileEngine::FileName) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QDateTime fileTime ( FileTime time ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_FILETIME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QDateTime * ptr = new QDateTime( obj->fileTime ( (QAbstractFileEngine::FileTime) hb_parni(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool flush ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_FLUSH )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->flush () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int handle () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_HANDLE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->handle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isRelativePath () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_ISRELATIVEPATH )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isRelativePath () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_ISSEQUENTIAL )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSequential () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool link ( const QString & newName )
*/
HB_FUNC_STATIC( QFSFILEENGINE_LINK )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->link ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool mkdir ( const QString & name, bool createParentDirectories ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_MKDIR )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
    {
      RBOOL( obj->mkdir ( PQSTRING(1), PBOOL(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString owner ( FileOwner own ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_OWNER )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQSTRING( obj->owner ( (QAbstractFileEngine::FileOwner) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual uint ownerId ( FileOwner own ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_OWNERID )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RUINT( obj->ownerId ( (QAbstractFileEngine::FileOwner) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_POS )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->pos () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 read ( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QFSFILEENGINE_READ )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
      RQINT64( obj->read ( (char *) hb_parc(1), PQINT64(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 readLine ( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QFSFILEENGINE_READLINE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
      RQINT64( obj->readLine ( (char *) hb_parc(1), PQINT64(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool remove ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_REMOVE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->remove () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool rename ( const QString & newName )
*/
HB_FUNC_STATIC( QFSFILEENGINE_RENAME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->rename ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool rmdir ( const QString & name, bool recurseParentDirectories ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_RMDIR )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
    {
      RBOOL( obj->rmdir ( PQSTRING(1), PBOOL(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SEEK )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->seek ( PQINT64(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setFileName ( const QString & file )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETFILENAME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool setPermissions ( uint perms )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETPERMISSIONS )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->setPermissions ( PUINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool setSize ( qint64 size )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETSIZE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->setSize ( PQINT64(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_SIZE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->size () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_SUPPORTSEXTENSION )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->supportsExtension ( (QAbstractFileEngine::Extension) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 write ( const char * data, qint64 len )
*/
HB_FUNC_STATIC( QFSFILEENGINE_WRITE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
      RQINT64( obj->write ( PCONSTCHAR(1), PQINT64(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QString currentPath ( const QString & fileName = QString() )
*/
HB_FUNC_STATIC( QFSFILEENGINE_CURRENTPATH )
{
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
  {
      RQSTRING( QFSFileEngine::currentPath ( OPQSTRING(1,QString()) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QFileInfoList drives ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_DRIVES )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFileInfoList list = obj->drives ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QFILEINFO" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QFILEINFO", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QString homePath ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_HOMEPATH )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QFSFileEngine::homePath () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString rootPath ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_ROOTPATH )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QFSFileEngine::rootPath () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool setCurrentPath ( const QString & path )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETCURRENTPATH )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      RBOOL( QFSFileEngine::setCurrentPath ( PQSTRING(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString tempPath ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_TEMPPATH )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QFSFileEngine::tempPath () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
