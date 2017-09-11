$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLNAME
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QABSTRACTURIRESOLVER
#endif

CLASS QXmlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD bindVariable1
   METHOD bindVariable2
   METHOD bindVariable3
   METHOD bindVariable4
   METHOD bindVariable5
   METHOD bindVariable6
   METHOD bindVariable
   METHOD evaluateTo1
   METHOD evaluateTo2
   //METHOD evaluateTo3
   //METHOD evaluateTo4
   METHOD evaluateTo5
   METHOD evaluateTo
   METHOD initialTemplateName
   METHOD isValid
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD queryLanguage
   METHOD setFocus1
   METHOD setFocus2
   METHOD setFocus3
   METHOD setFocus4
   METHOD setFocus
   METHOD setInitialTemplateName1
   METHOD setInitialTemplateName2
   METHOD setInitialTemplateName
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setQuery1
   METHOD setQuery2
   METHOD setQuery3
   METHOD setQuery
   METHOD setUriResolver
   METHOD uriResolver

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlQuery>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QAbstractMessageHandler>
#include <QNetworkAccessManager>
#include <QAbstractUriResolver>

/*
QXmlQuery ()
*/
$constructor=|new1|

/*
QXmlQuery ( const QXmlQuery & other )
*/
$constructor=|new2|const QXmlQuery &

/*
QXmlQuery ( const QXmlNamePool & np )
*/
$constructor=|new3|const QXmlNamePool &

/*
QXmlQuery ( QueryLanguage,QXmlNamePool & np = QXmlNamePool() )
*/
$constructor=|new4|QXmlQuery::QueryLanguage,QXmlNamePool &=QXmlNamePool()

//[1]QXmlQuery ()
//[2]QXmlQuery ( const QXmlQuery & other )
//[3]QXmlQuery ( const QXmlNamePool & np )
//[4]QXmlQuery ( QueryLanguage queryLanguage, const QXmlNamePool & np = QXmlNamePool() )

HB_FUNC_STATIC( QXMLQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLQUERY(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQXMLNAMEPOOL(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQXMLNAMEPOOL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void bindVariable ( const QXmlName & name, const QXmlItem & value )
*/
$method=|void|bindVariable,bindVariable1|const QXmlName &,const QXmlItem &

/*
void bindVariable ( const QXmlName & name, QIODevice * device )
*/
$method=|void|bindVariable,bindVariable2|const QXmlName &,QIODevice *

/*
void bindVariable ( const QXmlName & name, const QXmlQuery & query )
*/
$method=|void|bindVariable,bindVariable3|const QXmlName &,const QXmlQuery &

/*
void bindVariable ( const QString & localName, const QXmlItem & value )
*/
$method=|void|bindVariable,bindVariable4|const QString &,const QXmlItem &

/*
void bindVariable ( const QString & localName, QIODevice * device )
*/
$method=|void|bindVariable,bindVariable5|const QString &,QIODevice *

/*
void bindVariable ( const QString & localName, const QXmlQuery & query )
*/
$method=|void|bindVariable,bindVariable6|const QString &,const QXmlQuery &

//[1]void bindVariable ( const QXmlName & name, const QXmlItem & value )
//[2]void bindVariable ( const QXmlName & name, QIODevice * device )
//[3]void bindVariable ( const QXmlName & name, const QXmlQuery & query )
//[4]void bindVariable ( const QString & localName, const QXmlItem & value )
//[5]void bindVariable ( const QString & localName, QIODevice * device )
//[6]void bindVariable ( const QString & localName, const QXmlQuery & query )

HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE )
{
  if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLITEM(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE1 );
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE2 );
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLQUERY(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLITEM(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE4 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE5 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLQUERY(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void evaluateTo ( QXmlResultItems * result ) const
*/
$method=|void|evaluateTo,evaluateTo1|QXmlResultItems *

/*
bool evaluateTo ( QAbstractXmlReceiver * callback ) const
*/
$method=|bool|evaluateTo,evaluateTo2|QAbstractXmlReceiver *

/*
bool evaluateTo ( QStringList * target ) const
*/
%% TODO: implementar 'QStringList *'
%% $method=|bool|evaluateTo,evaluateTo3|QStringList *

/*
bool evaluateTo ( QString * output ) const
*/
%% TODO: implementar 'QString *'
%% $method=|bool|evaluateTo,evaluateTo4|QString *

/*
bool evaluateTo ( QIODevice * target ) const
*/
$method=|bool|evaluateTo,evaluateTo5|QIODevice *

//[1]void evaluateTo ( QXmlResultItems * result ) const
//[2]bool evaluateTo ( QAbstractXmlReceiver * callback ) const
//[3]bool evaluateTo ( QStringList * target ) const
//[4]bool evaluateTo ( QString * output ) const
//[5]bool evaluateTo ( QIODevice * target ) const

HB_FUNC_STATIC( QXMLQUERY_EVALUATETO )
{
  if( ISNUMPAR(1) && ISQXMLRESULTITEMS(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO1 );
  }
  else if( ISNUMPAR(1) && ISQABSTRACTXMLRECEIVER(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO2 );
  }
%%  else if( ISNUMPAR(1) && ISARRAY(1) )
%%  {
%%    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO3 );
%%  }
%%  else if( ISNUMPAR(1) && ISCHAR(1) )
%%  {
%%    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO4 );
%%  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QXmlName initialTemplateName () const
*/
$method=|QXmlName|initialTemplateName|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QAbstractMessageHandler * messageHandler () const
*/
$method=|QAbstractMessageHandler *|messageHandler|

/*
QXmlNamePool namePool () const
*/
$method=|QXmlNamePool|namePool|

/*
QNetworkAccessManager * networkAccessManager () const
*/
$method=|QNetworkAccessManager *|networkAccessManager|

/*
QueryLanguage queryLanguage () const
*/
$method=|QXmlQuery::QueryLanguage|queryLanguage|

/*
void setFocus ( const QXmlItem & item )
*/
$method=|void|setFocus,setFocus1|const QXmlItem &

/*
bool setFocus ( const QUrl & documentURI )
*/
$method=|bool|setFocus,setFocus2|const QUrl &

/*
bool setFocus ( QIODevice * document )
*/
$method=|bool|setFocus,setFocus3|QIODevice *

/*
bool setFocus ( const QString & focus )
*/
$method=|bool|setFocus,setFocus4|const QString &

//[1]void setFocus ( const QXmlItem & item )
//[2]bool setFocus ( const QUrl & documentURI )
//[3]bool setFocus ( QIODevice * document )
//[4]bool setFocus ( const QString & focus )

HB_FUNC_STATIC( QXMLQUERY_SETFOCUS )
{
  if( ISNUMPAR(1) && ISQXMLITEM(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS2 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setInitialTemplateName ( const QXmlName & name )
*/
$method=|void|setInitialTemplateName,setInitialTemplateName1|const QXmlName &

/*
void setInitialTemplateName ( const QString & localName )
*/
$method=|void|setInitialTemplateName,setInitialTemplateName2|const QString &

//[1]void setInitialTemplateName ( const QXmlName & name )
//[2]void setInitialTemplateName ( const QString & localName )

HB_FUNC_STATIC( QXMLQUERY_SETINITIALTEMPLATENAME )
{
  if( ISNUMPAR(1) && ISQXMLNAME(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETINITIALTEMPLATENAME1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETINITIALTEMPLATENAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMessageHandler ( QAbstractMessageHandler * aMessageHandler )
*/
$method=|void|setMessageHandler|QAbstractMessageHandler *

/*
void setNetworkAccessManager ( QNetworkAccessManager * newManager )
*/
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

/*
void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
*/
$method=|void|setQuery,setQuery1|QIODevice *,const QUrl &=QUrl()

/*
void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
*/
$method=|void|setQuery,setQuery2|const QUrl &,const QUrl &=QUrl()

/*
void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )
*/
$method=|void|setQuery,setQuery3|const QString &,const QUrl &=QUrl()

//[1]void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
//[2]void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
//[3]void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )

HB_FUNC_STATIC( QXMLQUERY_SETQUERY )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETQUERY1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETQUERY2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETQUERY3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
$method=|void|setUriResolver|const QAbstractUriResolver *

/*
const QAbstractUriResolver * uriResolver () const
*/
$method=|const QAbstractUriResolver *|uriResolver|

$extraMethods

#pragma ENDDUMP
