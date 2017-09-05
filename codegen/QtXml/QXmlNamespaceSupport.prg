$header

#include "hbclass.ch"


CLASS QXmlNamespaceSupport

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD popContext
   METHOD prefix
   METHOD prefixes1
   METHOD prefixes2
   METHOD prefixes
   METHOD processName
   METHOD pushContext
   METHOD reset
   METHOD setPrefix
   METHOD splitName
   METHOD uri
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlNamespaceSupport>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlNamespaceSupport ()
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_NEW )
{
  QXmlNamespaceSupport * o = new QXmlNamespaceSupport ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
void popContext ()
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_POPCONTEXT )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->popContext ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString prefix ( const QString & uri ) const
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_PREFIX )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->prefix ( PQSTRING(1) ) );
  }
}


/*
QStringList prefixes () const
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_PREFIXES1 )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->prefixes () );
  }
}


/*
QStringList prefixes ( const QString & uri ) const
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_PREFIXES2 )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->prefixes ( PQSTRING(1) ) );
  }
}


//[1]QStringList prefixes () const
//[2]QStringList prefixes ( const QString & uri ) const

HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_PREFIXES )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNAMESPACESUPPORT_PREFIXES1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLNAMESPACESUPPORT_PREFIXES2 );
  }
}

/*
void processName ( const QString & qname, bool isAttribute, QString & nsuri, QString & localname ) const
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_PROCESSNAME )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par3 = hb_parc(3);
    QString par4 = hb_parc(4);
    obj->processName ( PQSTRING(1), PBOOL(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void pushContext ()
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_PUSHCONTEXT )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->pushContext ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reset ()
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_RESET )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrefix ( const QString & pre, const QString & uri )
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_SETPREFIX )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPrefix ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void splitName ( const QString & qname, QString & prefix, QString & localname ) const
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_SPLITNAME )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    obj->splitName ( PQSTRING(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString uri ( const QString & prefix ) const
*/
HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_URI )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->uri ( PQSTRING(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
