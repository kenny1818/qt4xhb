$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLERROR
REQUEST QSQLQUERY
REQUEST QSQLRECORD
REQUEST QVARIANT
#endif

CLASS QSqlQueryModel INHERIT QAbstractTableModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD lastError
   METHOD query
   METHOD record
   METHOD setQuery
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD fetchMore
   METHOD headerData
   METHOD insertColumns
   METHOD removeColumns
   METHOD rowCount
   METHOD setHeaderData

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlQueryModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>

/*
QSqlQueryModel ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
virtual void clear ()
*/
$virtualMethod=|void|clear|

/*
QSqlError lastError () const
*/
$method=|QSqlError|lastError|

/*
QSqlQuery query () const
*/
$method=|QSqlQuery|query|

/*
QSqlRecord record ( int row ) const
*/
$internalMethod=|QSqlRecord|record,record1|int

/*
QSqlRecord record () const
*/
$internalMethod=|QSqlRecord|record,record2|

//[1]QSqlRecord record ( int row ) const
//[2]QSqlRecord record () const

HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQueryModel_record1();
  }
  else if( ISNUMPAR(0) )
  {
    QSqlQueryModel_record2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setQuery ( const QSqlQuery & query )
*/
$internalMethod=|void|setQuery,setQuery1|const QSqlQuery &

/*
void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )
*/
$internalMethod=|void|setQuery,setQuery2|const QString &,const QSqlDatabase &=QSqlDatabase()

//[1]void setQuery ( const QSqlQuery & query )
//[2]void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )

HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY )
{
  if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    QSqlQueryModel_setQuery1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    QSqlQueryModel_setQuery2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool canFetchMore ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|bool|canFetchMore|const QModelIndex &=QModelIndex()

/*
virtual int columnCount ( const QModelIndex & index = QModelIndex() ) const
*/
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

/*
virtual QVariant data ( const QModelIndex & item, int role = Qt::DisplayRole ) const
*/
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
virtual void fetchMore ( const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|void|fetchMore|const QModelIndex &=QModelIndex()

/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

/*
virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
$virtualMethod=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

#pragma ENDDUMP
