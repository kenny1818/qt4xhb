$header

#include "hbclass.ch"

CLASS QTreeWidgetItemIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTreeWidgetItemIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTreeWidgetItemIterator ( const QTreeWidgetItemIterator & it )
*/
$internalConstructor=|new1|const QTreeWidgetItemIterator &

/*
QTreeWidgetItemIterator ( QTreeWidget * widget, IteratorFlags flags = All )
*/
$internalConstructor=|new2|QTreeWidget *,QTreeWidgetItemIterator::IteratorFlags=QTreeWidgetItemIterator::All

/*
QTreeWidgetItemIterator ( QTreeWidgetItem * item, IteratorFlags flags = All )
*/
$internalConstructor=|new3|QTreeWidgetItem *,QTreeWidgetItemIterator::IteratorFlags=QTreeWidgetItemIterator::All

//[1]QTreeWidgetItemIterator ( const QTreeWidgetItemIterator & it )
//[2]QTreeWidgetItemIterator ( QTreeWidget * widget, IteratorFlags flags = All )
//[3]QTreeWidgetItemIterator ( QTreeWidgetItem * item, IteratorFlags flags = All )

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEMITERATOR(1) )
  {
    QTreeWidgetItemIterator_new1();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGET(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTreeWidgetItemIterator_new2();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTreeWidgetItemIterator_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
