$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QLAYOUT
REQUEST QSIZE
REQUEST QSPACERITEM
REQUEST QWIDGET
#endif

CLASS QLayoutItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD alignment
   METHOD controlTypes
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setAlignment
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem
   METHOD widget

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLayoutItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
QSizePolicy::ControlTypes controlTypes () const
*/
$method=|QSizePolicy::ControlTypes|controlTypes|

/*
virtual Qt::Orientations expandingDirections () const = 0
*/
$virtualMethod=|Qt::Orientations|expandingDirections|

/*
virtual QRect geometry () const = 0
*/
$virtualMethod=|QRect|geometry|

/*
virtual bool hasHeightForWidth () const
*/
$virtualMethod=|bool|hasHeightForWidth|

/*
virtual int heightForWidth ( int w ) const
*/
$virtualMethod=|int|heightForWidth|int

/*
virtual void invalidate ()
*/
$virtualMethod=|void|invalidate|

/*
virtual bool isEmpty () const = 0
*/
$virtualMethod=|bool|isEmpty|

/*
virtual QLayout * layout ()
*/
$virtualMethod=|QLayout *|layout|

/*
virtual QSize maximumSize () const = 0
*/
$virtualMethod=|QSize|maximumSize|

/*
virtual int minimumHeightForWidth ( int w ) const
*/
$virtualMethod=|int|minimumHeightForWidth|int

/*
virtual QSize minimumSize () const = 0
*/
$virtualMethod=|QSize|minimumSize|

/*
void setAlignment ( Qt::Alignment alignment )
*/
$method=|void|setAlignment|Qt::Alignment

/*
virtual void setGeometry ( const QRect & r ) = 0
*/
$virtualMethod=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint () const = 0
*/
$virtualMethod=|QSize|sizeHint|

/*
virtual QSpacerItem * spacerItem ()
*/
$virtualMethod=|QSpacerItem *|spacerItem|

/*
virtual QWidget * widget ()
*/
$virtualMethod=|QWidget *|widget|

$extraMethods

#pragma ENDDUMP
