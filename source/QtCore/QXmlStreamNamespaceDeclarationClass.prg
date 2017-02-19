/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSTRINGREF

CLASS QXmlStreamNamespaceDeclaration

   DATA pointer
   DATA class_id INIT Class_Id_QXmlStreamNamespaceDeclaration
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD namespaceUri
   METHOD prefix
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlStreamNamespaceDeclaration
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlStreamNamespaceDeclaration
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlStreamNamespaceDeclaration
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlStreamNamespaceDeclaration
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlStreamNamespaceDeclaration
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlStreamNamespaceDeclaration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlStreamNamespaceDeclaration>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamNamespaceDeclaration()
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW1 )
{
  QXmlStreamNamespaceDeclaration * o = NULL;
  o = new QXmlStreamNamespaceDeclaration (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamNamespaceDeclaration *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW2 )
{
  QXmlStreamNamespaceDeclaration * o = NULL;
  QXmlStreamNamespaceDeclaration * par1 = (QXmlStreamNamespaceDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlStreamNamespaceDeclaration ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamNamespaceDeclaration *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW3 )
{
  QXmlStreamNamespaceDeclaration * o = NULL;
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  o = new QXmlStreamNamespaceDeclaration ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamNamespaceDeclaration *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QXmlStreamNamespaceDeclaration()
//[2]QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
//[3]QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNAMESPACEDECLARATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMNAMESPACEDECLARATION(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNAMESPACEDECLARATION_NEW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNAMESPACEDECLARATION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_DELETE )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NAMESPACEURI )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->namespaceUri (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef prefix() const
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_PREFIX )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->prefix (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}




#pragma ENDDUMP
