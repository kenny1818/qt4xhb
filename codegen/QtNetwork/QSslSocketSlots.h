%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|encrypted()
$signal=|encryptedBytesWritten( qint64 written )
$signal=|modeChanged( QSslSocket::SslMode mode )
$signal=|peerVerifyError( const QSslError & error )
$signal=|sslErrors( const QList<QSslError> & errors )
$endSlotsClass
