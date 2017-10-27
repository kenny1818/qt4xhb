$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QTEXTDOCUMENT
REQUEST QFONT
REQUEST QTEXTCURSOR
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsTextItem INHERIT QGraphicsObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD adjustSize
   METHOD defaultTextColor
   METHOD document
   METHOD font
   METHOD openExternalLinks
   METHOD setDefaultTextColor
   METHOD setDocument
   METHOD setFont
   METHOD setHtml
   METHOD setOpenExternalLinks
   METHOD setPlainText
   METHOD setTabChangesFocus
   METHOD setTextCursor
   METHOD setTextInteractionFlags
   METHOD setTextWidth
   METHOD tabChangesFocus
   METHOD textCursor
   METHOD textInteractionFlags
   METHOD textWidth
   METHOD toHtml
   METHOD toPlainText
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   METHOD onLinkActivated
   METHOD onLinkHovered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsTextItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QFont>
#include <QTextCursor>

/*
QGraphicsTextItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW1 )
{
  QGraphicsTextItem * o = new QGraphicsTextItem ( OPQGRAPHICSITEM(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW2 )
{
  QGraphicsTextItem * o = new QGraphicsTextItem ( PQSTRING(1), OPQGRAPHICSITEM(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGraphicsTextItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSTEXTITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSTEXTITEM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void adjustSize ()
*/
$method=|void|adjustSize|

/*
QColor defaultTextColor () const
*/
$method=|QColor|defaultTextColor|

/*
QTextDocument * document () const
*/
$method=|QTextDocument *|document|

/*
QFont font () const
*/
$method=|QFont|font|

/*
bool openExternalLinks () const
*/
$method=|bool|openExternalLinks|

/*
void setDefaultTextColor ( const QColor & col )
*/
$method=|void|setDefaultTextColor|const QColor &

/*
void setDocument ( QTextDocument * document )
*/
$method=|void|setDocument|QTextDocument *

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setHtml ( const QString & text )
*/
$method=|void|setHtml|const QString &

/*
void setOpenExternalLinks ( bool open )
*/
$method=|void|setOpenExternalLinks|bool

/*
void setPlainText ( const QString & text )
*/
$method=|void|setPlainText|const QString &

/*
void setTabChangesFocus ( bool b )
*/
$method=|void|setTabChangesFocus|bool

/*
void setTextCursor ( const QTextCursor & cursor )
*/
$method=|void|setTextCursor|const QTextCursor &

/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

/*
void setTextWidth ( qreal width )
*/
$method=|void|setTextWidth|qreal

/*
bool tabChangesFocus () const
*/
$method=|bool|tabChangesFocus|

/*
QTextCursor textCursor () const
*/
$method=|QTextCursor|textCursor|

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
$method=|Qt::TextInteractionFlags|textInteractionFlags|

/*
qreal textWidth () const
*/
$method=|qreal|textWidth|

/*
QString toHtml () const
*/
$method=|QString|toHtml|

/*
QString toPlainText () const
*/
$method=|QString|toPlainText|

/*
virtual QRectF boundingRect () const
*/
$virtualMethod=|QRectF|boundingRect|

/*
virtual bool contains ( const QPointF & point ) const
*/
$virtualMethod=|bool|contains|const QPointF &

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

/*
virtual QPainterPath opaqueArea () const
*/
$virtualMethod=|QPainterPath|opaqueArea|

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

/*
virtual QPainterPath shape () const
*/
$virtualMethod=|QPainterPath|shape|

/*
virtual int type () const
*/
$virtualMethod=|int|type|

#pragma ENDDUMP
