$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLDTDHANDLER
REQUEST QXMLCONTENTHANDLER
REQUEST QXMLDECLHANDLER
REQUEST QXMLENTITYRESOLVER
REQUEST QXMLERRORHANDLER
REQUEST QXMLLEXICALHANDLER
#endif

CLASS QXmlReader

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD DTDHandler
   METHOD contentHandler
   METHOD declHandler
   METHOD entityResolver
   METHOD errorHandler
   METHOD feature
   METHOD hasFeature
   METHOD hasProperty
   METHOD lexicalHandler
   METHOD parse
   METHOD property
   METHOD setContentHandler
   METHOD setDTDHandler
   METHOD setDeclHandler
   METHOD setEntityResolver
   METHOD setErrorHandler
   METHOD setFeature
   METHOD setLexicalHandler
   METHOD setProperty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlReader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QXmlDTDHandler * DTDHandler () const = 0
*/
$virtualMethod=|QXmlDTDHandler *|DTDHandler|

/*
virtual QXmlContentHandler * contentHandler () const = 0
*/
$virtualMethod=|QXmlContentHandler *|contentHandler|

/*
virtual QXmlDeclHandler * declHandler () const = 0
*/
$virtualMethod=|QXmlDeclHandler *|declHandler|

/*
virtual QXmlEntityResolver * entityResolver () const = 0
*/
$virtualMethod=|QXmlEntityResolver *|entityResolver|

/*
virtual QXmlErrorHandler * errorHandler () const = 0
*/
$virtualMethod=|QXmlErrorHandler *|errorHandler|

/*
virtual bool feature ( const QString & name, bool * ok = 0 ) const = 0
*/
$virtualMethod=|bool|feature|const QString &,bool *=0

/*
virtual bool hasFeature ( const QString & name ) const = 0
*/
$virtualMethod=|bool|hasFeature|const QString &

/*
virtual bool hasProperty ( const QString & name ) const = 0
*/
$virtualMethod=|bool|hasProperty|const QString &

/*
virtual QXmlLexicalHandler * lexicalHandler () const = 0
*/
$virtualMethod=|QXmlLexicalHandler *|lexicalHandler|

/*
virtual bool parse ( const QXmlInputSource * input ) = 0
*/
$virtualMethod=|bool|parse|const QXmlInputSource *

/*
virtual void * property ( const QString & name, bool * ok = 0 ) const = 0
*/
$virtualMethod=|void *|property|const QString &,bool *=0

/*
virtual void setContentHandler ( QXmlContentHandler * handler ) = 0
*/
$virtualMethod=|void|setContentHandler|QXmlContentHandler *

/*
virtual void setDTDHandler ( QXmlDTDHandler * handler ) = 0
*/
$virtualMethod=|void|setDTDHandler|QXmlDTDHandler *

/*
virtual void setDeclHandler ( QXmlDeclHandler * handler ) = 0
*/
$virtualMethod=|void|setDeclHandler|QXmlDeclHandler *

/*
virtual void setEntityResolver ( QXmlEntityResolver * handler ) = 0
*/
$virtualMethod=|void|setEntityResolver|QXmlEntityResolver *

/*
virtual void setErrorHandler ( QXmlErrorHandler * handler ) = 0
*/
$virtualMethod=|void|setErrorHandler|QXmlErrorHandler *

/*
virtual void setFeature ( const QString & name, bool value ) = 0
*/
$virtualMethod=|void|setFeature|const QString &,bool

/*
virtual void setLexicalHandler ( QXmlLexicalHandler * handler ) = 0
*/
$virtualMethod=|void|setLexicalHandler|QXmlLexicalHandler *

/*
virtual void setProperty ( const QString & name, void * value ) = 0
*/
$virtualMethod=|void|setProperty|const QString &,void *

$extraMethods

#pragma ENDDUMP
