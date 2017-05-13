/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFILEINFO
#endif

CLASS QDirIterator

   DATA pointer
   DATA class_id INIT Class_Id_QDirIterator
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD fileInfo
   METHOD fileName
   METHOD filePath
   METHOD hasNext
   METHOD next
   METHOD path
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDirIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDirIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDirIterator ( const QDir & dir, IteratorFlags flags = NoIteratorFlags )
*/
HB_FUNC_STATIC( QDIRITERATOR_NEW1 )
{
  QDirIterator * o = NULL;
  QDir * par1 = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QDirIterator::NoIteratorFlags : hb_parni(2);
  o = new QDirIterator ( *par1, (QDirIterator::IteratorFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDirIterator ( const QString & path, IteratorFlags flags = NoIteratorFlags )
*/
HB_FUNC_STATIC( QDIRITERATOR_NEW2 )
{
  QDirIterator * o = NULL;
  int par2 = ISNIL(2)? (int) QDirIterator::NoIteratorFlags : hb_parni(2);
  o = new QDirIterator ( PQSTRING(1),  (QDirIterator::IteratorFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDirIterator ( const QString & path, QDir::Filters filters, IteratorFlags flags = NoIteratorFlags )
*/
HB_FUNC_STATIC( QDIRITERATOR_NEW3 )
{
  QDirIterator * o = NULL;
  int par3 = ISNIL(3)? (int) QDirIterator::NoIteratorFlags : hb_parni(3);
  o = new QDirIterator ( PQSTRING(1),  (QDir::Filters) hb_parni(2), (QDirIterator::IteratorFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDirIterator ( const QString & path, const QStringList & nameFilters, QDir::Filters filters = QDir::NoFilter, IteratorFlags flags = NoIteratorFlags )
*/
HB_FUNC_STATIC( QDIRITERATOR_NEW4 )
{
  QDirIterator * o = NULL;
  int par4 = ISNIL(4)? (int) QDirIterator::NoIteratorFlags : hb_parni(4);
  o = new QDirIterator ( PQSTRING(1), PQSTRINGLIST(2), ISNIL(3)? QDir::NoFilter : (QDir::Filters) hb_parni(3), (QDirIterator::IteratorFlags) par4 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDirIterator ( const QDir & dir, IteratorFlags flags = NoIteratorFlags )
//[2]QDirIterator ( const QString & path, IteratorFlags flags = NoIteratorFlags )
//[3]QDirIterator ( const QString & path, QDir::Filters filters, IteratorFlags flags = NoIteratorFlags )
//[4]QDirIterator ( const QString & path, const QStringList & nameFilters, QDir::Filters filters = QDir::NoFilter, IteratorFlags flags = NoIteratorFlags )

// TODO: resolver conflito entre casos 2 e 3

HB_FUNC_STATIC( QDIRITERATOR_NEW )
{
  if( ISBETWEEN(1,2) && ISQDIR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIRITERATOR_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIRITERATOR_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIRITERATOR_NEW3 );
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDIRITERATOR_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIRITERATOR_DELETE )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QFileInfo fileInfo () const
*/
HB_FUNC_STATIC( QDIRITERATOR_FILEINFO )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileInfo * ptr = new QFileInfo( obj->fileInfo () );
    _qt4xhb_createReturnClass ( ptr, "QFILEINFO", true );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QDIRITERATOR_FILENAME )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString filePath () const
*/
HB_FUNC_STATIC( QDIRITERATOR_FILEPATH )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->filePath ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
bool hasNext () const
*/
HB_FUNC_STATIC( QDIRITERATOR_HASNEXT )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasNext () );
  }
}


/*
QString next ()
*/
HB_FUNC_STATIC( QDIRITERATOR_NEXT )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->next ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString path () const
*/
HB_FUNC_STATIC( QDIRITERATOR_PATH )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->path ();
    hb_retc( RQSTRING(str1) );
  }
}


HB_FUNC_STATIC( QDIRITERATOR_NEWFROM )
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

HB_FUNC_STATIC( QDIRITERATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDIRITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QDIRITERATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDIRITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QDIRITERATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDIRITERATOR_SETSELFDESTRUCTION )
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
