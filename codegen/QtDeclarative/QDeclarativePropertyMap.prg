$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDeclarativePropertyMap INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clear
   METHOD contains
   METHOD count
   METHOD insert
   METHOD isEmpty
   METHOD keys
   METHOD size
   METHOD value

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativePropertyMap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

prototype=QDeclarativePropertyMap ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

prototype=void clear ( const QString & key )
$method=|void|clear|const QString &

prototype=bool contains ( const QString & key ) const
$method=|bool|contains|const QString &

prototype=int count () const
$method=|int|count|

prototype=void insert ( const QString & key, const QVariant & value )
$method=|void|insert|const QString &,const QVariant &

prototype=bool isEmpty () const
$method=|bool|isEmpty|

prototype=QStringList keys () const
$method=|QStringList|keys|

prototype=int size () const
$method=|int|size|

prototype=QVariant value ( const QString & key ) const
$method=|QVariant|value|const QString &

#pragma ENDDUMP
