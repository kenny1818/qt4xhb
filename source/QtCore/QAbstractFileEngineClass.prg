/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QABSTRACTFILEENGINE
#endif

CLASS QAbstractFileEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD atEnd
   METHOD caseSensitive
   METHOD close
   METHOD copy
   METHOD entryList
   METHOD error
   METHOD errorString
   METHOD fileFlags
   METHOD fileName
   METHOD fileTime
   METHOD flush
   METHOD handle
   METHOD isRelativePath
   METHOD isSequential
   METHOD link
   METHOD mkdir
   METHOD open
   METHOD owner
   METHOD ownerId
   METHOD pos
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
   METHOD create
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractFileEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractFileEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

HB_FUNC_STATIC( QABSTRACTFILEENGINE_DELETE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool atEnd () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_ATEND )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}



/*
virtual bool caseSensitive () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_CASESENSITIVE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->caseSensitive () );
  }
}


/*
virtual bool close ()
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_CLOSE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->close () );
  }
}


/*
virtual bool copy ( const QString & newName )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_COPY )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->copy ( PQSTRING(1) ) );
  }
}


/*
virtual QStringList entryList ( QDir::Filters filters, const QStringList & filterNames ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_ENTRYLIST )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->entryList ( (QDir::Filters) hb_parni(1), PQSTRINGLIST(2) );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QFile::FileError error () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_ERROR )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_ERRORSTRING )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}



/*
virtual FileFlags fileFlags ( FileFlags type = FileInfoAll ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_FILEFLAGS )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fileFlags ( ISNIL(1)? QAbstractFileEngine::FileInfoAll : (QAbstractFileEngine::FileFlags) hb_parni(1) ) );
  }
}


/*
virtual QString fileName ( FileName file = DefaultName ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_FILENAME )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fileName ( ISNIL(1)? QAbstractFileEngine::DefaultName : (QAbstractFileEngine::FileName) hb_parni(1) ) );
  }
}


/*
virtual QDateTime fileTime ( FileTime time ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_FILETIME )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->fileTime ( (QAbstractFileEngine::FileTime) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
virtual bool flush ()
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_FLUSH )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->flush () );
  }
}


/*
virtual int handle () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_HANDLE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->handle () );
  }
}


/*
virtual bool isRelativePath () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_ISRELATIVEPATH )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRelativePath () );
  }
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_ISSEQUENTIAL )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSequential () );
  }
}


/*
virtual bool link ( const QString & newName )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_LINK )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->link ( PQSTRING(1) ) );
  }
}



/*
virtual bool mkdir ( const QString & dirName, bool createParentDirectories ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_MKDIR )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->mkdir ( PQSTRING(1), PBOOL(2) ) );
  }
}


/*
virtual bool open ( QIODevice::OpenMode mode )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_OPEN )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1) ) );
  }
}


/*
virtual QString owner ( FileOwner owner ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_OWNER )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->owner ( (QAbstractFileEngine::FileOwner) hb_parni(1) ) );
  }
}


/*
virtual uint ownerId ( FileOwner owner ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_OWNERID )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->ownerId ( (QAbstractFileEngine::FileOwner) hb_parni(1) ) );
  }
}


/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_POS )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->pos () );
  }
}



/*
virtual qint64 readLine ( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_READLINE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQINT64( obj->readLine ( par1, PQINT64(2) ) );
  }
}


/*
virtual bool remove ()
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_REMOVE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->remove () );
  }
}


/*
virtual bool rename ( const QString & newName )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_RENAME )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->rename ( PQSTRING(1) ) );
  }
}


/*
virtual bool rmdir ( const QString & dirName, bool recurseParentDirectories ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_RMDIR )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->rmdir ( PQSTRING(1), PBOOL(2) ) );
  }
}


/*
virtual bool seek ( qint64 offset )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_SEEK )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->seek ( PQINT64(1) ) );
  }
}


/*
virtual void setFileName ( const QString & file )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_SETFILENAME )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool setPermissions ( uint perms )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_SETPERMISSIONS )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setPermissions ( PUINT(1) ) );
  }
}


/*
virtual bool setSize ( qint64 size )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_SETSIZE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setSize ( PQINT64(1) ) );
  }
}


/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_SIZE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->size () );
  }
}


/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_SUPPORTSEXTENSION )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->supportsExtension ( (QAbstractFileEngine::Extension) hb_parni(1) ) );
  }
}



/*
virtual qint64 write ( const char * data, qint64 len )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_WRITE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->write ( (const char *) hb_parc(1), PQINT64(2) ) );
  }
}



/*
QAbstractFileEngine * create ( const QString & fileName )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_CREATE )
{
  QAbstractFileEngine * ptr = QAbstractFileEngine::create ( PQSTRING(1) );
  _qt4xhb_createReturnClass ( ptr, "QABSTRACTFILEENGINE" );
}


HB_FUNC_STATIC( QABSTRACTFILEENGINE_NEWFROM )
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

HB_FUNC_STATIC( QABSTRACTFILEENGINE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QABSTRACTFILEENGINE_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTFILEENGINE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QABSTRACTFILEENGINE_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTFILEENGINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QABSTRACTFILEENGINE_SETSELFDESTRUCTION )
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
