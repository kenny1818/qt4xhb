/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QXMLNODEMODELINDEX
REQUEST QXMLNAME
REQUEST QSOURCELOCATION
REQUEST QVARIANT
#endif

CLASS QAbstractXmlNodeModel INHERIT QSharedData

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD baseUri
   METHOD compareOrder
   METHOD documentUri
   METHOD elementById
   METHOD kind
   METHOD name
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD root
   METHOD sourceLocation
   METHOD stringValue
   METHOD typedValue
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractXmlNodeModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractXmlNodeModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>
#include <QUrl>
#include <QVector>
#include <QSourceLocation>


HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_DELETE )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QUrl baseUri ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_BASEURI )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->baseUri ( *PQXMLNODEMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual QXmlNodeModelIndex::DocumentOrder compareOrder ( const QXmlNodeModelIndex & ni1, const QXmlNodeModelIndex & ni2 ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_COMPAREORDER )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->compareOrder ( *PQXMLNODEMODELINDEX(1), *PQXMLNODEMODELINDEX(2) ) );
  }
}


/*
virtual QUrl documentUri ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_DOCUMENTURI )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->documentUri ( *PQXMLNODEMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_ELEMENTBYID )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNodeModelIndex * ptr = new QXmlNodeModelIndex( obj->elementById ( *PQXMLNAME(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLNODEMODELINDEX", true );
  }
}


/*
virtual QXmlNodeModelIndex::NodeKind kind ( const QXmlNodeModelIndex & ni ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_KIND )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->kind ( *PQXMLNODEMODELINDEX(1) ) );
  }
}


/*
virtual QXmlName name ( const QXmlNodeModelIndex & ni ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_NAME )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * ptr = new QXmlName( obj->name ( *PQXMLNODEMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLNAME", true );
  }
}


/*
virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_NAMESPACEBINDINGS )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<QXmlName> list = obj->namespaceBindings ( *PQXMLNODEMODELINDEX(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QXMLNAME" );
    #else
    pDynSym = hb_dynsymFindName( "QXMLNAME" );
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
        hb_itemPutPtr( pItem, (QXmlName *) new QXmlName ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_NODESBYIDREF )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<QXmlNodeModelIndex> list = obj->nodesByIdref ( *PQXMLNAME(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QXMLNODEMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QXMLNODEMODELINDEX" );
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
        hb_itemPutPtr( pItem, (QXmlNodeModelIndex *) new QXmlNodeModelIndex ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QXmlNodeModelIndex root ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_ROOT )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNodeModelIndex * ptr = new QXmlNodeModelIndex( obj->root ( *PQXMLNODEMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLNODEMODELINDEX", true );
  }
}


/*
QSourceLocation sourceLocation ( const QXmlNodeModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_SOURCELOCATION )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSourceLocation * ptr = new QSourceLocation( obj->sourceLocation ( *PQXMLNODEMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSOURCELOCATION", true );
  }
}


/*
virtual QString stringValue ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_STRINGVALUE )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->stringValue ( *PQXMLNODEMODELINDEX(1) ) );
  }
}


/*
virtual QVariant typedValue ( const QXmlNodeModelIndex & node ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_TYPEDVALUE )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->typedValue ( *PQXMLNODEMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}





#pragma ENDDUMP
