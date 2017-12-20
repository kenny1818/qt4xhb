$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QSIZE
REQUEST QDECLARATIVECONTEXT
REQUEST QGRAPHICSOBJECT
REQUEST QURL
#endif

CLASS QDeclarativeView INHERIT QGraphicsView

   METHOD new
   METHOD delete
   METHOD engine
   METHOD errors
   METHOD initialSize
   METHOD resizeMode
   METHOD rootContext
   METHOD rootObject
   METHOD setResizeMode
   METHOD setSource
   METHOD source
   METHOD status

   METHOD onSceneResized
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDeclarativeError>
#include <QDeclarativeEngine>
#include <QDeclarativeContext>
#include <QGraphicsObject>

prototype=QDeclarativeView ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

prototype=QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )
$internalConstructor=|new2|const QUrl &,QWidget *=0

//[1]QDeclarativeView ( QWidget * parent = 0 )
//[2]QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QDeclarativeView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDeclarativeView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

prototype=QDeclarativeEngine * engine () const
$method=|QDeclarativeEngine *|engine|

prototype=QList<QDeclarativeError> errors () const
HB_FUNC_STATIC( QDECLARATIVEVIEW_ERRORS )
{
  QDeclarativeView * obj = (QDeclarativeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QDeclarativeError> list = obj->errors ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QDECLARATIVEERROR" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QDeclarativeError *) new QDeclarativeError ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

prototype=QSize initialSize () const
$method=|QSize|initialSize|

prototype=ResizeMode resizeMode () const
$method=|QDeclarativeView::ResizeMode|resizeMode|

prototype=QDeclarativeContext * rootContext () const
$method=|QDeclarativeContext *|rootContext|

prototype=QGraphicsObject * rootObject () const
$method=|QGraphicsObject *|rootObject|

prototype=void setResizeMode ( ResizeMode )
$method=|void|setResizeMode|QDeclarativeView::ResizeMode

prototype=void setSource ( const QUrl & url )
$method=|void|setSource|const QUrl &

prototype=QUrl source () const
$method=|QUrl|source|

prototype=Status status () const
$method=|QDeclarativeView::Status|status|

#pragma ENDDUMP
