$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFILEINFO
REQUEST QDIR
REQUEST QCHAR
#endif

CLASS QDir

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD absolutePath
   METHOD canonicalPath
   METHOD cd
   METHOD cdUp
   METHOD count
   METHOD dirName
   METHOD entryInfoList1
   METHOD entryInfoList2
   METHOD entryInfoList
   METHOD entryList1
   METHOD entryList2
   METHOD entryList
   METHOD exists1
   METHOD exists2
   METHOD exists
   METHOD filePath
   METHOD filter
   METHOD isAbsolute
   METHOD isReadable
   METHOD isRelative
   METHOD isRoot
   METHOD makeAbsolute
   METHOD mkdir
   METHOD mkpath
   METHOD nameFilters
   METHOD path
   METHOD refresh
   METHOD relativeFilePath
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD rmpath
   METHOD setFilter
   METHOD setNameFilters
   METHOD setPath
   METHOD setSorting
   METHOD sorting
   METHOD addSearchPath
   METHOD cleanPath
   METHOD current
   METHOD currentPath
   METHOD drives
   METHOD fromNativeSeparators
   METHOD home
   METHOD homePath
   METHOD isAbsolutePath
   METHOD isRelativePath
   METHOD match1
   METHOD match2
   METHOD match
   METHOD root
   METHOD rootPath
   METHOD searchPaths
   METHOD separator
   METHOD setCurrent
   METHOD setSearchPaths
   METHOD temp
   METHOD tempPath
   METHOD toNativeSeparators
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDir>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDir(const QDir & dir)
*/
HB_FUNC_STATIC( QDIR_NEW1 )
{
  QDir * o = new QDir ( *PQDIR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDir(const QString & path = QString())
*/
HB_FUNC_STATIC( QDIR_NEW2 )
{
  QDir * o = new QDir ( OPQSTRING(1,QString()) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)
*/
HB_FUNC_STATIC( QDIR_NEW3 )
{
  int par3 = ISNIL(3)? (int) QDir::Name | QDir::IgnoreCase : hb_parni(3);
  int par4 = ISNIL(4)? (int) QDir::AllEntries : hb_parni(4);
  QDir * o = new QDir ( PQSTRING(1), PQSTRING(2), (QDir::SortFlags) par3, (QDir::Filters) par4 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDir(const QDir & dir)
//[2]QDir(const QString & path = QString())
//[3]QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)

HB_FUNC_STATIC( QDIR_NEW )
{
  if( ISNUMPAR(1) && ISQDIR(1) )
  {
    HB_FUNC_EXEC( QDIR_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISCHAR(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDIR_NEW2 );
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDIR_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString absoluteFilePath(const QString & fileName) const
*/
$method=|QString|absoluteFilePath|const QString &

/*
QString absolutePath() const
*/
$method=|QString|absolutePath|

/*
QString canonicalPath() const
*/
$method=|QString|canonicalPath|

/*
bool cd(const QString & dirName)
*/
$method=|bool|cd|const QString &

/*
bool cdUp()
*/
$method=|bool|cdUp|

/*
uint count() const
*/
$method=|uint|count|

/*
QString dirName() const
*/
$method=|QString|dirName|

/*
QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYINFOLIST1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QDir::NoFilter : hb_parni(2);
  int par3 = ISNIL(3)? (int) QDir::NoSort : hb_parni(3);
  if( obj )
  {
    QFileInfoList list = obj->entryInfoList ( PQSTRINGLIST(1), (QDir::Filters) par2, (QDir::SortFlags) par3 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QFILEINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QFILEINFO" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYINFOLIST2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileInfoList list = obj->entryInfoList ( ISNIL(1)? QDir::NoFilter : (QDir::Filters) hb_parni(1), ISNIL(2)? QDir::NoSort : (QDir::SortFlags) hb_parni(2) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QFILEINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QFILEINFO" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

//[1]QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
//[2]QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const

HB_FUNC_STATIC( QDIR_ENTRYINFOLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYINFOLIST1 );
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYINFOLIST2 );
  }
}

/*
QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
$method=|QStringList|entryList,entryList1|const QStringList &,QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

/*
QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
$method=|QStringList|entryList,entryList2|QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

//[1]QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
//[2]QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const

HB_FUNC_STATIC( QDIR_ENTRYLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYLIST1 );
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYLIST2 );
  }
}

/*
bool exists(const QString & name) const
*/
$method=|bool|exists,exists1|const QString &

/*
bool exists() const
*/
$method=|bool|exists,exists2|

//[1]bool exists(const QString & name) const
//[2]bool exists() const

HB_FUNC_STATIC( QDIR_EXISTS )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDIR_EXISTS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDIR_EXISTS2 );
  }
}

/*
QString filePath(const QString & fileName) const
*/
$method=|QString|filePath|const QString &

/*
Filters filter() const
*/
HB_FUNC_STATIC( QDIR_FILTER )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->filter () );
  }
}

/*
bool isAbsolute() const
*/
$method=|bool|isAbsolute|

/*
bool isReadable() const
*/
$method=|bool|isReadable|

/*
bool isRelative() const
*/
$method=|bool|isRelative|

/*
bool isRoot() const
*/
$method=|bool|isRoot|

/*
bool makeAbsolute()
*/
$method=|bool|makeAbsolute|

/*
bool mkdir(const QString & dirName) const
*/
$method=|bool|mkdir|const QString &

/*
bool mkpath(const QString & dirPath) const
*/
$method=|bool|mkpath|const QString &

/*
QStringList nameFilters() const
*/
$method=|QStringList|nameFilters|

/*
QString path() const
*/
$method=|QString|path|

/*
void refresh() const
*/
$method=|void|refresh|

/*
QString relativeFilePath(const QString & fileName) const
*/
$method=|QString|relativeFilePath|const QString &

/*
bool remove(const QString & fileName)
*/
$method=|bool|remove|const QString &

/*
bool rename(const QString & oldName, const QString & newName)
*/
$method=|bool|rename|const QString &,const QString &

/*
bool rmdir(const QString & dirName) const
*/
$method=|bool|rmdir|const QString &

/*
bool rmpath(const QString & dirPath) const
*/
$method=|bool|rmpath|const QString &

/*
void setFilter(Filters filters)
*/
$method=|void|setFilter|QDir::Filters

/*
void setNameFilters(const QStringList & nameFilters)
*/
$method=|void|setNameFilters|const QStringList &

/*
void setPath(const QString & path)
*/
$method=|void|setPath|const QString &

/*
void setSorting(SortFlags sort)
*/
$method=|void|setSorting|QDir::SortFlags

/*
SortFlags sorting() const
*/
HB_FUNC_STATIC( QDIR_SORTING )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->sorting () );
  }
}

/*
static void addSearchPath(const QString & prefix, const QString & path)
*/
$staticMethod=|void|addSearchPath|const QString &,const QString &

/*
static QString cleanPath(const QString & path)
*/
$staticMethod=|QString|cleanPath|const QString &

/*
static QDir current()
*/
$staticMethod=|QDir|current|

/*
static QString currentPath()
*/
$staticMethod=|QString|currentPath|

/*
QFileInfoList drives()
*/
HB_FUNC_STATIC( QDIR_DRIVES )
{
  QFileInfoList list = QDir::drives ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QFILEINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QFILEINFO" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QString fromNativeSeparators(const QString & pathName)
*/
$staticMethod=|QString|fromNativeSeparators|const QString &

/*
static QDir home()
*/
$staticMethod=|QDir|home|

/*
static QString homePath()
*/
$staticMethod=|QString|homePath|

/*
static bool isAbsolutePath(const QString & path)
*/
$staticMethod=|bool|isAbsolutePath|const QString &

/*
static bool isRelativePath(const QString & path)
*/
$staticMethod=|bool|isRelativePath|const QString &

/*
static bool match(const QString & filter, const QString & fileName)
*/
$staticMethod=|bool|match,match1|const QString &,const QString &

/*
static bool match(const QStringList & filters, const QString & fileName)
*/
$staticMethod=|bool|match,match2|const QStringList &,const QString &

//[1]bool match(const QString & filter, const QString & fileName)
//[2]bool match(const QStringList & filters, const QString & fileName)

HB_FUNC_STATIC( QDIR_MATCH )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDIR_MATCH1 );
  }
  else if( ISNUMPAR(2) && ISARRAY(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDIR_MATCH2 );
  }
}

/*
static QDir root()
*/
$staticMethod=|QDir|root|

/*
static QString rootPath()
*/
$staticMethod=|QString|rootPath|

/*
static QStringList searchPaths(const QString & prefix)
*/
$staticMethod=|QStringList|searchPaths|const QString &

/*
static QChar separator()
*/
$staticMethod=|QChar|separator|

/*
static bool setCurrent(const QString & path)
*/
$staticMethod=|bool|setCurrent|const QString &

/*
static void setSearchPaths(const QString & prefix, const QStringList & searchPaths)
*/
$staticMethod=|void|setSearchPaths|const QString &,const QStringList &

/*
static QDir temp()
*/
$staticMethod=|QDir|temp|

/*
static QString tempPath()
*/
$staticMethod=|QString|tempPath|

/*
static QString toNativeSeparators(const QString & pathName)
*/
$staticMethod=|QString|toNativeSeparators|const QString &

$extraMethods

#pragma ENDDUMP
