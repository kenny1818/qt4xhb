%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPCONTENTITEM
REQUEST QURL
#endif

CLASS QHelpContentItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD child
   METHOD childCount
   METHOD childPosition
   METHOD parent
   METHOD row
   METHOD title
   METHOD url

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$deleteMethod

$prototype=QHelpContentItem * child ( int row ) const
$method=|QHelpContentItem *|child|int

$prototype=int childCount () const
$method=|int|childCount|

$prototype=int childPosition ( QHelpContentItem * child ) const
$method=|int|childPosition|QHelpContentItem *

$prototype=QHelpContentItem * parent () const
$method=|QHelpContentItem *|parent|

$prototype=int row () const
$method=|int|row|

$prototype=QString title () const
$method=|QString|title|

$prototype=QUrl url () const
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
