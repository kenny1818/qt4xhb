$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QAXOBJECT
#endif

CLASS QAxBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD asVariant
   METHOD clear
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs

   METHOD onException
   METHOD onPropertyChanged
   METHOD onSignal

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAxBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QAxObject>

$deleteMethod

$prototype=QVariant asVariant () const
$method=|QVariant|asVariant|

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

$prototype=QString control () const
$method=|QString|control|

$prototype=void disableClassInfo ()
$method=|void|disableClassInfo|

$prototype=void disableEventSink ()
$method=|void|disableEventSink|

$prototype=void disableMetaObject ()
$method=|void|disableMetaObject|

$prototype=QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QVariant|dynamicCall,dynamicCall1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
void QAxBase_dynamicCall2 ()
{
  QAxBase * obj = (QAxBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QVariant * ptr = new QVariant( obj->dynamicCall ( (const char *) hb_parc(1), par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

//[1]QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant dynamicCall ( const char * function, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXBASE_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxBase_dynamicCall1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxBase_dynamicCall2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QString generateDocumentation ()
$method=|QString|generateDocumentation|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=virtual bool propertyWritable ( const char * prop ) const
$virtualMethod=|bool|propertyWritable|const char *

$prototype=QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QAxObject *|querySubObject,querySubObject1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
void QAxBase_querySubObject2 ()
{
  QAxBase * obj = (QAxBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QAxObject * ptr = obj->querySubObject ( (const char *) hb_parc(1), par2 );
    _qt4xhb_createReturnClass ( ptr, "QAXOBJECT" );
  }

}

//[1]QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXBASE_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxBase_querySubObject1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxBase_querySubObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool setControl ( const QString & )
$method=|bool|setControl|const QString &

$prototype=virtual void setPropertyWritable ( const char * prop, bool ok )
$virtualMethod=|void|setPropertyWritable|const char *,bool

$prototype=QStringList verbs () const
$method=|QStringList|verbs|

$extraMethods

#pragma ENDDUMP
