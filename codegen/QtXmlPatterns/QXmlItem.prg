$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QXMLNODEMODELINDEX
#endif

CLASS QXmlItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isAtomicValue
   METHOD isNode
   METHOD isNull
   METHOD toAtomicValue
   METHOD toNodeModelIndex

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

$prototype=QXmlItem ()
$internalConstructor=|new1|

$prototype=QXmlItem ( const QXmlItem & other )
$internalConstructor=|new2|const QXmlItem &

$prototype=QXmlItem ( const QXmlNodeModelIndex & node )
$internalConstructor=|new3|const QXmlNodeModelIndex &

$prototype=QXmlItem ( const QVariant & atomicValue )
$internalConstructor=|new4|const QVariant &

//[1]QXmlItem ()
//[2]QXmlItem ( const QXmlItem & other )
//[3]QXmlItem ( const QXmlNodeModelIndex & node )
//[4]QXmlItem ( const QVariant & atomicValue )

HB_FUNC_STATIC( QXMLITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlItem_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLITEM(1) )
  {
    QXmlItem_new2();
  }
  else if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
  {
    QXmlItem_new3();
  }
  else if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QXmlItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isAtomicValue () const
$method=|bool|isAtomicValue|

$prototype=bool isNode () const
$method=|bool|isNode|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QVariant toAtomicValue () const
$method=|QVariant|toAtomicValue|

$prototype=QXmlNodeModelIndex toNodeModelIndex () const
$method=|QXmlNodeModelIndex|toNodeModelIndex|

$extraMethods

#pragma ENDDUMP
