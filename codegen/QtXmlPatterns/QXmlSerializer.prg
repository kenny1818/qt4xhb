%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QIODEVICE
#endif

CLASS QXmlSerializer INHERIT QAbstractXmlReceiver

   METHOD new
   METHOD codec
   METHOD outputDevice
   METHOD setCodec
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD namespaceBinding
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlSerializer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QXmlSerializer ( const QXmlQuery & query, QIODevice * outputDevice )
$constructor=|new|const QXmlQuery &,QIODevice *

$prototype=const QTextCodec * codec () const
$method=|const QTextCodec *|codec|

$prototype=QIODevice * outputDevice () const
$method=|QIODevice *|outputDevice|

$prototype=void setCodec ( const QTextCodec * outputCodec )
$method=|void|setCodec|const QTextCodec *

$prototype=virtual void atomicValue ( const QVariant & value )
$virtualMethod=|void|atomicValue|const QVariant &

$prototype=virtual void attribute ( const QXmlName & name, const QStringRef & value )
$virtualMethod=|void|attribute|const QXmlName &,const QStringRef &

$prototype=virtual void characters ( const QStringRef & value )
$virtualMethod=|void|characters|const QStringRef &

$prototype=virtual void comment ( const QString & value )
$virtualMethod=|void|comment|const QString &

$prototype=virtual void endDocument ()
$virtualMethod=|void|endDocument|

$prototype=virtual void endElement ()
$virtualMethod=|void|endElement|

$prototype=virtual void endOfSequence ()
$virtualMethod=|void|endOfSequence|

$prototype=virtual void namespaceBinding ( const QXmlName & nb )
$virtualMethod=|void|namespaceBinding|const QXmlName &

$prototype=virtual void processingInstruction ( const QXmlName & name, const QString & value )
$virtualMethod=|void|processingInstruction|const QXmlName &,const QString &

$prototype=virtual void startDocument ()
$virtualMethod=|void|startDocument|

$prototype=virtual void startElement ( const QXmlName & name )
$virtualMethod=|void|startElement|const QXmlName &

$prototype=virtual void startOfSequence ()
$virtualMethod=|void|startOfSequence|

#pragma ENDDUMP
