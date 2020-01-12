%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

/*
enum QNetworkAccessManager::NetworkAccessibility
*/
#define QNetworkAccessManager_UnknownAccessibility                   -1
#define QNetworkAccessManager_NotAccessible                          0
#define QNetworkAccessManager_Accessible                             1

/*
enum QNetworkAccessManager::Operation
*/
#define QNetworkAccessManager_HeadOperation                          1
#define QNetworkAccessManager_GetOperation                           2
#define QNetworkAccessManager_PutOperation                           3
#define QNetworkAccessManager_PostOperation                          4
#define QNetworkAccessManager_DeleteOperation                        5
#define QNetworkAccessManager_CustomOperation                        6
