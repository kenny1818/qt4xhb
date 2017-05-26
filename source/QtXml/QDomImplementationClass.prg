/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMDOCUMENT
REQUEST QDOMDOCUMENTTYPE
#endif

CLASS QDomImplementation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD createDocument
   METHOD createDocumentType
   METHOD hasFeature
   METHOD isNull
   METHOD invalidDataPolicy
   METHOD setInvalidDataPolicy
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomImplementation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDomImplementation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomImplementation ()
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW1 )
{
  QDomImplementation * o = NULL;
  o = new QDomImplementation ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomImplementation ( const QDomImplementation & x )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW2 )
{
  QDomImplementation * o = NULL;
  QDomImplementation * par1 = (QDomImplementation *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomImplementation ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomImplementation ()
//[2]QDomImplementation ( const QDomImplementation & x )

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMIMPLEMENTATION(1) )
  {
    HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMIMPLEMENTATION_DELETE )
{
  QDomImplementation * obj = (QDomImplementation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomDocument createDocument ( const QString & nsURI, const QString & qName, const QDomDocumentType & doctype )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_CREATEDOCUMENT )
{
  QDomImplementation * obj = (QDomImplementation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomDocumentType * par3 = (QDomDocumentType *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QDomDocument * ptr = new QDomDocument( obj->createDocument ( PQSTRING(1), PQSTRING(2), *par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENT", true );
  }
}


/*
QDomDocumentType createDocumentType ( const QString & qName, const QString & publicId, const QString & systemId )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_CREATEDOCUMENTTYPE )
{
  QDomImplementation * obj = (QDomImplementation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomDocumentType * ptr = new QDomDocumentType( obj->createDocumentType ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENTTYPE", true );
  }
}


/*
bool hasFeature ( const QString & feature, const QString & version ) const
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_HASFEATURE )
{
  QDomImplementation * obj = (QDomImplementation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasFeature ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
bool isNull ()
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_ISNULL )
{
  QDomImplementation * obj = (QDomImplementation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull () );
  }
}



/*
InvalidDataPolicy invalidDataPolicy ()
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_INVALIDDATAPOLICY )
{
  hb_retni( (int) QDomImplementation::invalidDataPolicy () );
}


/*
void setInvalidDataPolicy ( InvalidDataPolicy policy )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_SETINVALIDDATAPOLICY )
{
  int par1 = hb_parni(1);
  QDomImplementation::setInvalidDataPolicy (  (QDomImplementation::InvalidDataPolicy) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEWFROM )
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

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEWFROM );
}

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEWFROM );
}

HB_FUNC_STATIC( QDOMIMPLEMENTATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDOMIMPLEMENTATION_SETSELFDESTRUCTION )
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
