%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD allConfigurations
   METHOD capabilities
   METHOD configurationFromIdentifier
   METHOD defaultConfiguration
   METHOD isOnline
   METHOD updateConfigurations

   METHOD onConfigurationAdded
   METHOD onConfigurationChanged
   METHOD onConfigurationRemoved
   METHOD onOnlineStateChanged
   METHOD onUpdateCompleted

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkConfigurationManager ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QList<QNetworkConfiguration> allConfigurations ( QNetworkConfiguration::StateFlags filter = 0 ) const
$method=|QList<QNetworkConfiguration>|allConfigurations|QNetworkConfiguration::StateFlags=0

$prototype=QNetworkConfigurationManager::Capabilities capabilities () const
$method=|QNetworkConfigurationManager::Capabilities|capabilities|

$prototype=QNetworkConfiguration configurationFromIdentifier ( const QString & identifier ) const
$method=|QNetworkConfiguration|configurationFromIdentifier|const QString &

$prototype=QNetworkConfiguration defaultConfiguration () const
$method=|QNetworkConfiguration|defaultConfiguration|

$prototype=bool isOnline () const
$method=|bool|isOnline|

$prototype=void updateConfigurations ()
$method=|void|updateConfigurations|

$beginSignals
$signal=|configurationAdded(QNetworkConfiguration)
$signal=|configurationChanged(QNetworkConfiguration)
$signal=|configurationRemoved(QNetworkConfiguration)
$signal=|onlineStateChanged(bool)
$signal=|updateCompleted()
$endSignals

#pragma ENDDUMP
