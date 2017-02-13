/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QNETWORKACCESSMANAGER

CLASS QDeclarativeNetworkAccessManagerFactory

   DATA pointer
   DATA class_id INIT Class_Id_QDeclarativeNetworkAccessManagerFactory
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD create
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDeclarativeNetworkAccessManagerFactory
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDeclarativeNetworkAccessManagerFactory
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDeclarativeNetworkAccessManagerFactory
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDeclarativeNetworkAccessManagerFactory
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDeclarativeNetworkAccessManagerFactory
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDeclarativeNetworkAccessManagerFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDeclarativeNetworkAccessManagerFactory>

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

HB_FUNC_STATIC( QDECLARATIVENETWORKACCESSMANAGERFACTORY_DELETE )
{
  QDeclarativeNetworkAccessManagerFactory * obj = (QDeclarativeNetworkAccessManagerFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QNetworkAccessManager * create ( QObject * parent ) = 0
*/
HB_FUNC_STATIC( QDECLARATIVENETWORKACCESSMANAGERFACTORY_CREATE )
{
  QDeclarativeNetworkAccessManagerFactory * obj = (QDeclarativeNetworkAccessManagerFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QNetworkAccessManager * ptr = obj->create ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );  }
}





#pragma ENDDUMP
