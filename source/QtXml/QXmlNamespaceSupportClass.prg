/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QXmlNamespaceSupport
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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


HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_DELETE )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
    QString str1 = obj->prefix ( PQSTRING(1) );
    hb_retc( RQSTRING(str1) );
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
    QStringList strl = obj->prefixes ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
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
    QStringList strl = obj->prefixes ( PQSTRING(1) );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
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
    QString str1 = obj->uri ( PQSTRING(1) );
    hb_retc( RQSTRING(str1) );
  }
}


HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLNAMESPACESUPPORT_NEWFROM );
}

HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLNAMESPACESUPPORT_NEWFROM );
}

HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
