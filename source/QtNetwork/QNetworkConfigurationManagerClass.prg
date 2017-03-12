/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QNetworkConfigurationManager INHERIT QObject

   DATA class_id INIT Class_Id_QNetworkConfigurationManager
   DATA self_destruction INIT .f.

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
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkConfigurationManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QNetworkConfigurationManager>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QNetworkConfigurationManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_NEW )
{
  QNetworkConfigurationManager * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QNetworkConfigurationManager ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkConfigurationManager *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_DELETE )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QNetworkConfiguration> allConfigurations ( QNetworkConfiguration::StateFlags filter = 0 ) const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ALLCONFIGURATIONS )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) 0 : hb_parni(1);
    QList<QNetworkConfiguration> list = obj->allConfigurations (  (QNetworkConfiguration::StateFlags) par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QNETWORKCONFIGURATION" );
    #else
    pDynSym = hb_dynsymFindName( "QNETWORKCONFIGURATION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QNetworkConfiguration *) new QNetworkConfiguration ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QNetworkConfigurationManager::Capabilities capabilities () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_CAPABILITIES )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->capabilities (  ) );
  }
}


/*
QNetworkConfiguration configurationFromIdentifier ( const QString & identifier ) const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_CONFIGURATIONFROMIDENTIFIER )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configurationFromIdentifier ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
QNetworkConfiguration defaultConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_DEFAULTCONFIGURATION )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->defaultConfiguration (  ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
bool isOnline () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ISONLINE )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isOnline (  ) );
  }
}


/*
void updateConfigurations ()
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_UPDATECONFIGURATIONS )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updateConfigurations (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
