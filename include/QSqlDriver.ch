/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QSqlDriver::DriverFeature
*/
#define QSqlDriver_Transactions                                      0
#define QSqlDriver_QuerySize                                         1
#define QSqlDriver_BLOB                                              2
#define QSqlDriver_Unicode                                           3
#define QSqlDriver_PreparedQueries                                   4
#define QSqlDriver_NamedPlaceholders                                 5
#define QSqlDriver_PositionalPlaceholders                            6
#define QSqlDriver_LastInsertId                                      7
#define QSqlDriver_BatchOperations                                   8
#define QSqlDriver_SimpleLocking                                     9
#define QSqlDriver_LowPrecisionNumbers                               10
#define QSqlDriver_EventNotifications                                11
#define QSqlDriver_FinishQuery                                       12
#define QSqlDriver_MultipleResultSets                                13

/*
enum QSqlDriver::IdentifierType
*/
#define QSqlDriver_FieldName                                         0
#define QSqlDriver_TableName                                         1

/*
enum QSqlDriver::StatementType
*/
#define QSqlDriver_WhereStatement                                    0
#define QSqlDriver_SelectStatement                                   1
#define QSqlDriver_UpdateStatement                                   2
#define QSqlDriver_InsertStatement                                   3
#define QSqlDriver_DeleteStatement                                   4
