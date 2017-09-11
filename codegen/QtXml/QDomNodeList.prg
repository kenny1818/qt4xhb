$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMNODE
#endif

CLASS QDomNodeList

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD at
   METHOD count
   METHOD isEmpty
   METHOD item
   METHOD length
   METHOD size

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomNodeList>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomNodeList ()
*/
$internalConstructor=|new1|

/*
QDomNodeList ( const QDomNodeList & n )
*/
$internalConstructor=|new2|const QDomNodeList &

//[1]QDomNodeList ()
//[2]QDomNodeList ( const QDomNodeList & n )

HB_FUNC_STATIC( QDOMNODELIST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomNodeList_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMNODELIST(1) )
  {
    QDomNodeList_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDomNode at ( int index ) const
*/
$method=|QDomNode|at|int

/*
int count () const
*/
$method=|int|count|

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
QDomNode item ( int index ) const
*/
$method=|QDomNode|item|int

/*
uint length () const
*/
$method=|uint|length|

/*
int size () const
*/
$method=|int|size|

$extraMethods

#pragma ENDDUMP
