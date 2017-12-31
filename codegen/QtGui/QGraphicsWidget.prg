$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QGRAPHICSWIDGET
REQUEST QFONT
REQUEST QGRAPHICSLAYOUT
REQUEST QPALETTE
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QSTYLE
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsWidget INHERIT QGraphicsObject,QGraphicsLayoutItem

   METHOD new
   METHOD delete
   METHOD actions
   METHOD addAction
   METHOD addActions
   METHOD adjustSize
   METHOD autoFillBackground
   METHOD focusPolicy
   METHOD focusWidget
   METHOD font
   METHOD getWindowFrameMargins
   METHOD grabShortcut
   METHOD insertAction
   METHOD insertActions
   METHOD isActiveWindow
   METHOD layout
   METHOD layoutDirection
   METHOD paintWindowFrame
   METHOD palette
   METHOD rect
   METHOD releaseShortcut
   METHOD removeAction
   METHOD resize
   METHOD setAttribute
   METHOD setAutoFillBackground
   METHOD setContentsMargins
   METHOD setFocusPolicy
   METHOD setFont
   METHOD setLayout
   METHOD setLayoutDirection
   METHOD setPalette
   METHOD setShortcutAutoRepeat
   METHOD setShortcutEnabled
   METHOD setStyle
   METHOD setWindowFlags
   METHOD setWindowFrameMargins
   METHOD setWindowTitle
   METHOD size
   METHOD style
   METHOD testAttribute
   METHOD unsetLayoutDirection
   METHOD unsetWindowFrameMargins
   METHOD windowFlags
   METHOD windowFrameGeometry
   METHOD windowFrameRect
   METHOD windowTitle
   METHOD windowType
   METHOD boundingRect
   METHOD getContentsMargins
   METHOD paint
   METHOD setGeometry
   METHOD shape
   METHOD type
   METHOD close
   METHOD setTabOrder

   METHOD onGeometryChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QGraphicsWidget ( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
$constructor=|new|QGraphicsItem *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=QList<QAction *> actions () const
HB_FUNC_STATIC( QGRAPHICSWIDGET_ACTIONS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAction *> list = obj->actions ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QACTION" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAction *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=void addAction ( QAction * action )
$method=|void|addAction|QAction *

$prototype=void addActions ( QList<QAction *> actions )
HB_FUNC_STATIC( QGRAPHICSWIDGET_ADDACTIONS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAction *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->addActions ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void adjustSize ()
$method=|void|adjustSize|

$prototype=bool autoFillBackground () const
$method=|bool|autoFillBackground|

$prototype=Qt::FocusPolicy focusPolicy () const
$method=|Qt::FocusPolicy|focusPolicy|

$prototype=QGraphicsWidget * focusWidget () const
$method=|QGraphicsWidget *|focusWidget|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=void getWindowFrameMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
$method=|void|getWindowFrameMargins|qreal *,qreal *,qreal *,qreal *

$prototype=int grabShortcut ( const QKeySequence & sequence, Qt::ShortcutContext context = Qt::WindowShortcut )
$method=|int|grabShortcut|const QKeySequence &|Qt::ShortcutContext=Qt::WindowShortcut

$prototype=void insertAction ( QAction * before, QAction * action )
$method=|void|insertAction|QAction *,QAction *

$prototype=void insertActions ( QAction * before, QList<QAction *> actions )
HB_FUNC_STATIC( QGRAPHICSWIDGET_INSERTACTIONS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAction *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertActions ( PQACTION(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=bool isActiveWindow () const
$method=|bool|isActiveWindow|

$prototype=QGraphicsLayout * layout () const
$method=|QGraphicsLayout *|layout|

$prototype=Qt::LayoutDirection layoutDirection () const
$method=|Qt::LayoutDirection|layoutDirection|

$prototype=virtual void paintWindowFrame ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
$virtualMethod=|void|paintWindowFrame|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototype=QPalette palette () const
$method=|QPalette|palette|

$prototype=QRectF rect () const
$method=|QRectF|rect|

$prototype=void releaseShortcut ( int id )
$method=|void|releaseShortcut|int

$prototype=void removeAction ( QAction * action )
$method=|void|removeAction|QAction *

$prototype=void resize ( const QSizeF & size )
$internalMethod=|void|resize,resize1|const QSizeF &

$prototype=void resize ( qreal w, qreal h )
$internalMethod=|void|resize,resize2|qreal,qreal

//[1]void resize ( const QSizeF & size )
//[2]void resize ( qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsWidget_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsWidget_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
$method=|void|setAttribute|Qt::WidgetAttribute,bool=true

$prototype=void setAutoFillBackground ( bool enabled )
$method=|void|setAutoFillBackground|bool

$prototype=void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
$method=|void|setContentsMargins|qreal,qreal,qreal,qreal

$prototype=void setFocusPolicy ( Qt::FocusPolicy policy )
$method=|void|setFocusPolicy|Qt::FocusPolicy

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setLayout ( QGraphicsLayout * layout )
$method=|void|setLayout|QGraphicsLayout *

$prototype=void setLayoutDirection ( Qt::LayoutDirection direction )
$method=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=void setPalette ( const QPalette & palette )
$method=|void|setPalette|const QPalette &

$prototype=void setShortcutAutoRepeat ( int id, bool enabled = true )
$method=|void|setShortcutAutoRepeat|int,bool=true

$prototype=void setShortcutEnabled ( int id, bool enabled = true )
$method=|void|setShortcutEnabled|int,bool=true

$prototype=void setStyle ( QStyle * style )
$method=|void|setStyle|QStyle *

$prototype=void setWindowFlags ( Qt::WindowFlags wFlags )
$method=|void|setWindowFlags|Qt::WindowFlags

$prototype=void setWindowFrameMargins ( qreal left, qreal top, qreal right, qreal bottom )
$method=|void|setWindowFrameMargins|qreal,qreal,qreal,qreal

$prototype=void setWindowTitle ( const QString & title )
$method=|void|setWindowTitle|const QString &

$prototype=QSizeF size () const
$method=|QSizeF|size|

$prototype=QStyle * style () const
$method=|QStyle *|style|

$prototype=bool testAttribute ( Qt::WidgetAttribute attribute ) const
$method=|bool|testAttribute|Qt::WidgetAttribute

$prototype=void unsetLayoutDirection ()
$method=|void|unsetLayoutDirection|

$prototype=void unsetWindowFrameMargins ()
$method=|void|unsetWindowFrameMargins|

$prototype=Qt::WindowFlags windowFlags () const
$method=|Qt::WindowFlags|windowFlags|

$prototype=QRectF windowFrameGeometry () const
$method=|QRectF|windowFrameGeometry|

$prototype=QRectF windowFrameRect () const
$method=|QRectF|windowFrameRect|

$prototype=QString windowTitle () const
$method=|QString|windowTitle|

$prototype=Qt::WindowType windowType () const
$method=|Qt::WindowType|windowType|

$prototype=virtual QRectF boundingRect () const
$virtualMethod=|QRectF|boundingRect|

$prototype=virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
$virtualMethod=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototype=void setGeometry ( qreal x, qreal y, qreal w, qreal h )
$internalMethod=|void|setGeometry,setGeometry1|qreal,qreal,qreal,qreal

$prototype=virtual void setGeometry ( const QRectF & rect )
$internalVirtualMethod=|void|setGeometry,setGeometry2|const QRectF &

//[1]void setGeometry ( qreal x, qreal y, qreal w, qreal h )
//[2]virtual void setGeometry ( const QRectF & rect )

HB_FUNC_STATIC( QGRAPHICSWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsWidget_setGeometry1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsWidget_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual QPainterPath shape () const
$virtualMethod=|QPainterPath|shape|

$prototype=virtual int type () const
$virtualMethod=|int|type|

$prototype=bool close ()
$method=|bool|close|

$prototype=static void setTabOrder ( QGraphicsWidget * first, QGraphicsWidget * second )
$staticMethod=|void|setTabOrder|QGraphicsWidget *,QGraphicsWidget *

#pragma ENDDUMP
