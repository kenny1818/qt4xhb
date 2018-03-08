%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|encrypted()
$slot=|encryptedBytesWritten( qint64 written )
$slot=|modeChanged( QSslSocket::SslMode mode )
$slot=|peerVerifyError( const QSslError & error )
$slot=|sslErrors( const QList<QSslError> & errors )
$endSlotsClass
