/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETAENUM
REQUEST QMETAMETHOD
REQUEST QMETAOBJECT
REQUEST QVARIANT
#endif

CLASS QMetaProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD typeName
   METHOD type
   METHOD userType
   METHOD propertyIndex
   METHOD isReadable
   METHOD isWritable
   METHOD isResettable
   METHOD isDesignable
   METHOD isScriptable
   METHOD isStored
   METHOD isEditable
   METHOD isUser
   METHOD isConstant
   METHOD isFinal
   METHOD isFlagType
   METHOD isEnumType
   METHOD enumerator
   METHOD hasNotifySignal
   METHOD notifySignal
   METHOD notifySignalIndex
   METHOD revision
   METHOD read
   METHOD write
   METHOD reset
   METHOD hasStdCppSet
   METHOD isValid
   METHOD enclosingMetaObject

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMetaProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QMetaProperty>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMetaProperty()
*/
HB_FUNC_STATIC( QMETAPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMetaProperty * o = new QMetaProperty();
    Qt4xHb::_qt4xhb_returnNewObject( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMETAPROPERTY_DELETE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

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
const char *name() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NAME )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retc( (const char *) obj->name() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const char *typeName() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_TYPENAME )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retc( (const char *) obj->typeName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVariant::Type type() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_TYPE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int userType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_USERTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->userType() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int propertyIndex() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_PROPERTYINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->propertyIndex() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isReadable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISREADABLE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadable() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isWritable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISWRITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isWritable() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isResettable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISRESETTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isResettable() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isDesignable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISDESIGNABLE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
#endif
      RBOOL( obj->isDesignable( OPQOBJECT(1,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isScriptable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSCRIPTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
#endif
      RBOOL( obj->isScriptable( OPQOBJECT(1,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isStored(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSTORED )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
#endif
      RBOOL( obj->isStored( OPQOBJECT(1,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isEditable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISEDITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
#endif
      RBOOL( obj->isEditable( OPQOBJECT(1,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isUser(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISUSER )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
#endif
      RBOOL( obj->isUser( OPQOBJECT(1,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isConstant() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISCONSTANT )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isConstant() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isFinal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISFINAL )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFinal() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isFlagType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISFLAGTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFlagType() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isEnumType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISENUMTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEnumType() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMetaEnum enumerator() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENUMERATOR )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMetaEnum * ptr = new QMetaEnum( obj->enumerator() );
      Qt4xHb::_qt4xhb_createReturnClass( ptr, "QMETAENUM", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasNotifySignal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_HASNOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasNotifySignal() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMetaMethod notifySignal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMetaMethod * ptr = new QMetaMethod( obj->notifySignal() );
      Qt4xHb::_qt4xhb_createReturnClass( ptr, "QMETAMETHOD", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int notifySignalIndex() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NOTIFYSIGNALINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->notifySignalIndex() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int revision() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_REVISION )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->revision() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVariant read(const QObject *obj) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_READ )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->read( PQOBJECT(1) ) );
      Qt4xHb::_qt4xhb_createReturnClass( ptr, "QVARIANT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool write(QObject *obj, const QVariant &value) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_WRITE )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISQVARIANT(2) )
    {
#endif
      RBOOL( obj->write( PQOBJECT(1), *PQVARIANT(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool reset(QObject *obj) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_RESET )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      RBOOL( obj->reset( PQOBJECT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasStdCppSet() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_HASSTDCPPSET )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasStdCppSet() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISVALID )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENCLOSINGMETAOBJECT )
{
  QMetaProperty * obj = (QMetaProperty *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QMetaObject * ptr = obj->enclosingMetaObject();
      Qt4xHb::_qt4xhb_createReturnClass( ptr, "QMETAOBJECT", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QMETAPROPERTY_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMETAPROPERTY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMETAPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QMETAPROPERTY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMETAPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QMETAPROPERTY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMETAPROPERTY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
