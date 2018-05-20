%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD addPath
   METHOD addPaths
   METHOD directories
   METHOD files
   METHOD removePath
   METHOD removePaths

   METHOD onDirectoryChanged
   METHOD onFileChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QFileSystemWatcher(QObject * parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
$internalConstructor=|new2|const QStringList &,QObject *=0

//[1]QFileSystemWatcher(QObject * parent = 0)
//[2]QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)

HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QFileSystemWatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QFileSystemWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addPath ( const QString & path )
$method=|void|addPath|const QString &

$prototype=void addPaths ( const QStringList & paths )
$method=|void|addPaths|const QStringList &

$prototype=QStringList directories () const
$method=|QStringList|directories|

$prototype=QStringList files () const
$method=|QStringList|files|

$prototype=void removePath ( const QString & path )
$method=|void|removePath|const QString &

$prototype=void removePaths ( const QStringList & paths )
$method=|void|removePaths|const QStringList &

$beginSignals
$signal=|directoryChanged(QString)
$signal=|fileChanged(QString)
$endSignals

#pragma ENDDUMP
