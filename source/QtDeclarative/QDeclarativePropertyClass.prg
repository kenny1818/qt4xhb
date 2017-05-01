/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETAMETHOD
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QVARIANT
#endif

CLASS QDeclarativeProperty

   DATA pointer
   DATA class_id INIT Class_Id_QDeclarativeProperty
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD connectNotifySignal1
   METHOD connectNotifySignal2
   METHOD connectNotifySignal
   METHOD hasNotifySignal
   METHOD index
   METHOD isDesignable
   METHOD isProperty
   METHOD isResettable
   METHOD isSignalProperty
   METHOD isValid
   METHOD isWritable
   METHOD method
   METHOD name
   METHOD needsNotifySignal
   METHOD object
   METHOD property
   METHOD propertyType
   METHOD propertyTypeCategory
   METHOD propertyTypeName
   METHOD read1
   METHOD reset
   METHOD type
   METHOD write1
   METHOD read2
   METHOD read3
   METHOD read4
   METHOD read
   METHOD write2
   METHOD write3
   METHOD write4
   METHOD write
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativeProperty>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeProperty ()
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW1 )
{
  QDeclarativeProperty * o = NULL;
  o = new QDeclarativeProperty (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW2 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW3 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeContext * par2 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW4 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeEngine * par2 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, const QString & name )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW5 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW6 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QDeclarativeContext * par3 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW7 )
{
  QDeclarativeProperty * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QDeclarativeEngine * par3 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeProperty ( const QDeclarativeProperty & other )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW8 )
{
  QDeclarativeProperty * o = NULL;
  QDeclarativeProperty * par1 = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeProperty ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDeclarativeProperty ()
//[2]QDeclarativeProperty ( QObject * obj )
//[3]QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
//[4]QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
//[5]QDeclarativeProperty ( QObject * obj, const QString & name )
//[6]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
//[7]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
//[8]QDeclarativeProperty ( const QDeclarativeProperty & other )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVECONTEXT(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW3 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVEENGINE(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW4 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW5 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW6 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEPROPERTY(1) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
bool connectNotifySignal ( QObject * dest, const char * slot ) const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL1 )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const char * par2 = hb_parc(2);
    hb_retl( obj->connectNotifySignal ( par1,  (const char *) par2 ) );
  }
}


/*
bool connectNotifySignal ( QObject * dest, int method ) const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL2 )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->connectNotifySignal ( par1, PINT(2) ) );
  }
}


//[1]bool connectNotifySignal ( QObject * dest, const char * slot ) const
//[2]bool connectNotifySignal ( QObject * dest, int method ) const

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL2 );
  }
}

/*
bool hasNotifySignal () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_HASNOTIFYSIGNAL )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasNotifySignal (  ) );
  }
}


/*
int index () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_INDEX )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->index (  ) );
  }
}


/*
bool isDesignable () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISDESIGNABLE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isDesignable (  ) );
  }
}


/*
bool isProperty () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISPROPERTY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isProperty (  ) );
  }
}


/*
bool isResettable () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISRESETTABLE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isResettable (  ) );
  }
}


/*
bool isSignalProperty () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISSIGNALPROPERTY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSignalProperty (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISVALID )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool isWritable () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISWRITABLE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
QMetaMethod method () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_METHOD )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->method (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NAME )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool needsNotifySignal () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEEDSNOTIFYSIGNAL )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->needsNotifySignal (  ) );
  }
}


/*
QObject * object () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_OBJECT )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->object (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QMetaProperty property () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMetaProperty * ptr = new QMetaProperty( obj->property (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAPROPERTY" );
  }
}


/*
int propertyType () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->propertyType (  ) );
  }
}


/*
PropertyTypeCategory propertyTypeCategory () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPECATEGORY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->propertyTypeCategory (  ) );
  }
}


/*
const char * propertyTypeName () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPENAME )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->propertyTypeName (  );
    hb_retc( str1 );
  }
}


/*
QVariant read () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ1 )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->read (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool reset () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_RESET )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->reset (  ) );
  }
}


/*
Type type () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_TYPE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type (  ) );
  }
}


/*
bool write ( const QVariant & value ) const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE1 )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->write ( *par1 ) );
  }
}



/*
QVariant read ( QObject * object, const QString & name )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ2 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QVariant * ptr = new QVariant( QDeclarativeProperty::read ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}


/*
QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ3 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QDeclarativeContext * par3 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * ptr = new QVariant( QDeclarativeProperty::read ( par1, par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}


/*
QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ4 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QDeclarativeEngine * par3 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * ptr = new QVariant( QDeclarativeProperty::read ( par1, par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}


//[1]QVariant read () const
//[2]QVariant read ( QObject * object, const QString & name )
//[3]QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
//[4]QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_READ1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_READ2 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_READ3 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_READ4 );
  }
}

/*
bool write ( QObject * object, const QString & name, const QVariant & value )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE2 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retl( QDeclarativeProperty::write ( par1, par2, *par3 ) );
}


/*
bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE3 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeContext * par4 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retl( QDeclarativeProperty::write ( par1, par2, *par3, par4 ) );
}


/*
bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE4 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeEngine * par4 = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retl( QDeclarativeProperty::write ( par1, par2, *par3, par4 ) );
}


//[1]bool write ( const QVariant & value ) const
//[2]bool write ( QObject * object, const QString & name, const QVariant & value )
//[3]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
//[4]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_WRITE1 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_WRITE2 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVECONTEXT(4) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_WRITE3 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVEENGINE(4) )
  {
    HB_FUNC_EXEC( QDECLARATIVEPROPERTY_WRITE4 );
  }
}


HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROM )
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

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_SETSELFDESTRUCTION )
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
