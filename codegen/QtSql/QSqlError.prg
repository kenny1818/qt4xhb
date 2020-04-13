%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtSql

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
$internalConstructor=|new1|const QString &=QString(),const QString &=QString(),QSqlError::ErrorType=QSqlError::NoError,int=-1

$prototype=QSqlError ( const QSqlError & other )
$internalConstructor=|new2|const QSqlError &

/*
[1]QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
[2]QSqlError ( const QSqlError & other )
*/

HB_FUNC_STATIC( QSQLERROR_NEW )
{
  if( ISBETWEEN(0,4) && (ISCHAR(1)||ISNIL(1)) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QSqlError_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLERROR(1) )
  {
    QSqlError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QString databaseText () const
$method=|QString|databaseText|

$prototype=QString driverText () const
$method=|QString|driverText|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=int number () const
$method=|int|number|

$prototype=void setDatabaseText ( const QString & databaseText )
$method=|void|setDatabaseText|const QString &

$prototype=void setDriverText ( const QString & driverText )
$method=|void|setDriverText|const QString &

$prototype=void setNumber ( int number )
$method=|void|setNumber|int

$prototype=void setType ( ErrorType type )
$method=|void|setType|QSqlError::ErrorType

$prototype=QString text () const
$method=|QString|text|

$prototype=ErrorType type () const
$method=|QSqlError::ErrorType|type|

$extraMethods

#pragma ENDDUMP
