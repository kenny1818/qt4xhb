/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QWEBFRAME
REQUEST QSIZE
REQUEST QWEBELEMENT
REQUEST QWEBELEMENTCOLLECTION
REQUEST QRECT
REQUEST QWEBHITTESTRESULT
REQUEST QICON
REQUEST QWEBPAGE
REQUEST QPOINT
REQUEST QWEBSECURITYORIGIN
REQUEST QVARIANT
#endif

CLASS QWebFrame INHERIT QObject

   DATA class_id INIT Class_Id_QWebFrame
   DATA self_destruction INIT .F.

   METHOD addToJavaScriptWindowObject1
   METHOD addToJavaScriptWindowObject2
   METHOD addToJavaScriptWindowObject
   METHOD baseUrl
   METHOD childFrames
   METHOD contentsSize
   METHOD documentElement
   METHOD findAllElements
   METHOD findFirstElement
   METHOD frameName
   METHOD geometry
   METHOD hasFocus
   METHOD hitTestContent
   METHOD icon
   METHOD load1
   METHOD load2
   METHOD load
   METHOD page
   METHOD parentFrame
   METHOD pos
   METHOD render1
   METHOD render2
   METHOD render3
   METHOD render
   METHOD renderTreeDump
   METHOD requestedUrl
   METHOD scroll
   METHOD scrollBarGeometry
   METHOD scrollBarMaximum
   METHOD scrollBarMinimum
   METHOD scrollBarPolicy
   METHOD scrollBarValue
   METHOD scrollPosition
   METHOD scrollToAnchor
   METHOD securityOrigin
   METHOD setContent
   METHOD setFocus
   METHOD setHtml
   METHOD setScrollBarPolicy
   METHOD setScrollBarValue
   METHOD setScrollPosition
   METHOD setTextSizeMultiplier
   METHOD setUrl
   METHOD setZoomFactor
   METHOD textSizeMultiplier
   METHOD title
   METHOD toHtml
   METHOD toPlainText
   METHOD url
   METHOD zoomFactor
   METHOD evaluateJavaScript
   METHOD print
   METHOD onContentsSizeChanged
   METHOD onIconChanged
   METHOD onInitialLayoutCompleted
   METHOD onJavaScriptWindowObjectCleared
   METHOD onLoadFinished
   METHOD onLoadStarted
   METHOD onPageChanged
   METHOD onTitleChanged
   METHOD onUrlChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWebFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QWebElement>
#include <QWebSecurityOrigin>



/*
void addToJavaScriptWindowObject ( const QString & name, QObject * object )
*/
HB_FUNC_STATIC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT1 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addToJavaScriptWindowObject ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addToJavaScriptWindowObject ( const QString & name, QObject * object, QScriptEngine::ValueOwnership own )
*/
HB_FUNC_STATIC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT2 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    obj->addToJavaScriptWindowObject ( PQSTRING(1), par2,  (QScriptEngine::ValueOwnership) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addToJavaScriptWindowObject ( const QString & name, QObject * object )
//[2]void addToJavaScriptWindowObject ( const QString & name, QObject * object, QScriptEngine::ValueOwnership own )

HB_FUNC_STATIC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT2 );
  }
}

/*
QUrl baseUrl () const
*/
HB_FUNC_STATIC( QWEBFRAME_BASEURL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->baseUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QList<QWebFrame *> childFrames () const
*/
HB_FUNC_STATIC( QWEBFRAME_CHILDFRAMES )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QWebFrame *> list = obj->childFrames (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBFRAME" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBFRAME" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QWebFrame *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QSize contentsSize () const
*/
HB_FUNC_STATIC( QWEBFRAME_CONTENTSSIZE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->contentsSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QWebElement documentElement () const
*/
HB_FUNC_STATIC( QWEBFRAME_DOCUMENTELEMENT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->documentElement (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElementCollection findAllElements ( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBFRAME_FINDALLELEMENTS )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElementCollection * ptr = new QWebElementCollection( obj->findAllElements ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENTCOLLECTION", true );
  }
}


/*
QWebElement findFirstElement ( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBFRAME_FINDFIRSTELEMENT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->findFirstElement ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QString frameName () const
*/
HB_FUNC_STATIC( QWEBFRAME_FRAMENAME )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->frameName (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QRect geometry () const
*/
HB_FUNC_STATIC( QWEBFRAME_GEOMETRY )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
bool hasFocus () const
*/
HB_FUNC_STATIC( QWEBFRAME_HASFOCUS )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasFocus (  ) );
  }
}


/*
QWebHitTestResult hitTestContent ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWEBFRAME_HITTESTCONTENT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWebHitTestResult * ptr = new QWebHitTestResult( obj->hitTestContent ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBHITTESTRESULT", true );
  }
}


/*
QIcon icon () const
*/
HB_FUNC_STATIC( QWEBFRAME_ICON )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
void load ( const QUrl & url )
*/
HB_FUNC_STATIC( QWEBFRAME_LOAD1 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->load ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void load ( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
HB_FUNC_STATIC( QWEBFRAME_LOAD2 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QNetworkAccessManager::GetOperation : hb_parni(2);
    QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->load ( *par1,  (QNetworkAccessManager::Operation) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void load ( const QUrl & url )
//[2]void load ( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )

HB_FUNC_STATIC( QWEBFRAME_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QWEBFRAME_LOAD1 );
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && (ISNUM(2)||ISNIL(2)) && (ISQBYTEARRAY(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QWEBFRAME_LOAD2 );
  }
}


/*
QWebPage * page () const
*/
HB_FUNC_STATIC( QWEBFRAME_PAGE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebPage * ptr = obj->page (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBPAGE" );
  }
}


/*
QWebFrame * parentFrame () const
*/
HB_FUNC_STATIC( QWEBFRAME_PARENTFRAME )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebFrame * ptr = obj->parentFrame (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
QPoint pos () const
*/
HB_FUNC_STATIC( QWEBFRAME_POS )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
void render ( QPainter * painter )
*/
HB_FUNC_STATIC( QWEBFRAME_RENDER1 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->render ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void render ( QPainter * painter, const QRegion & clip )
*/
HB_FUNC_STATIC( QWEBFRAME_RENDER2 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRegion * par2 = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->render ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void render ( QPainter * painter, RenderLayer layer, const QRegion & clip = QRegion() )
*/
HB_FUNC_STATIC( QWEBFRAME_RENDER3 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QRegion par3 = ISNIL(3)? QRegion() : *(QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->render ( par1,  (QWebFrame::RenderLayer) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRegion & clip )
//[3]void render ( QPainter * painter, RenderLayer layer, const QRegion & clip = QRegion() )

HB_FUNC_STATIC( QWEBFRAME_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    HB_FUNC_EXEC( QWEBFRAME_RENDER1 );
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQREGION(2) )
  {
    HB_FUNC_EXEC( QWEBFRAME_RENDER2 );
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISNUM(2) && (ISQREGION(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QWEBFRAME_RENDER3 );
  }
}

/*
QString renderTreeDump () const
*/
HB_FUNC_STATIC( QWEBFRAME_RENDERTREEDUMP )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->renderTreeDump (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QUrl requestedUrl () const
*/
HB_FUNC_STATIC( QWEBFRAME_REQUESTEDURL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->requestedUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void scroll ( int dx, int dy )
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->scroll ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRect scrollBarGeometry ( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARGEOMETRY )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QRect * ptr = new QRect( obj->scrollBarGeometry (  (Qt::Orientation) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int scrollBarMaximum ( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARMAXIMUM )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->scrollBarMaximum (  (Qt::Orientation) par1 ) );
  }
}


/*
int scrollBarMinimum ( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARMINIMUM )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->scrollBarMinimum (  (Qt::Orientation) par1 ) );
  }
}


/*
Qt::ScrollBarPolicy scrollBarPolicy ( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARPOLICY )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( (int) obj->scrollBarPolicy (  (Qt::Orientation) par1 ) );
  }
}


/*
int scrollBarValue ( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARVALUE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->scrollBarValue (  (Qt::Orientation) par1 ) );
  }
}


/*
QPoint scrollPosition () const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLPOSITION )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->scrollPosition (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
void scrollToAnchor ( const QString & anchor )
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLTOANCHOR )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scrollToAnchor ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebSecurityOrigin securityOrigin () const
*/
HB_FUNC_STATIC( QWEBFRAME_SECURITYORIGIN )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebSecurityOrigin * ptr = new QWebSecurityOrigin( obj->securityOrigin (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBSECURITYORIGIN", true );
  }
}


/*
void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QWEBFRAME_SETCONTENT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setContent ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocus ()
*/
HB_FUNC_STATIC( QWEBFRAME_SETFOCUS )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocus (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QWEBFRAME_SETHTML )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHtml ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScrollBarPolicy ( Qt::Orientation orientation, Qt::ScrollBarPolicy policy )
*/
HB_FUNC_STATIC( QWEBFRAME_SETSCROLLBARPOLICY )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setScrollBarPolicy (  (Qt::Orientation) par1,  (Qt::ScrollBarPolicy) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScrollBarValue ( Qt::Orientation orientation, int value )
*/
HB_FUNC_STATIC( QWEBFRAME_SETSCROLLBARVALUE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setScrollBarValue (  (Qt::Orientation) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScrollPosition ( const QPoint & pos )
*/
HB_FUNC_STATIC( QWEBFRAME_SETSCROLLPOSITION )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setScrollPosition ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextSizeMultiplier ( qreal factor )
*/
HB_FUNC_STATIC( QWEBFRAME_SETTEXTSIZEMULTIPLIER )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextSizeMultiplier ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QWEBFRAME_SETURL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZoomFactor ( qreal factor )
*/
HB_FUNC_STATIC( QWEBFRAME_SETZOOMFACTOR )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setZoomFactor ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal textSizeMultiplier () const
*/
HB_FUNC_STATIC( QWEBFRAME_TEXTSIZEMULTIPLIER )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->textSizeMultiplier (  );
    hb_retnd( r );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QWEBFRAME_TITLE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->title (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString toHtml () const
*/
HB_FUNC_STATIC( QWEBFRAME_TOHTML )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toHtml (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QWEBFRAME_TOPLAINTEXT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toPlainText (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QWEBFRAME_URL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
qreal zoomFactor () const
*/
HB_FUNC_STATIC( QWEBFRAME_ZOOMFACTOR )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->zoomFactor (  );
    hb_retnd( r );
  }
}


/*
QVariant evaluateJavaScript ( const QString & scriptSource )
*/
HB_FUNC_STATIC( QWEBFRAME_EVALUATEJAVASCRIPT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->evaluateJavaScript ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void print ( QPrinter * printer ) const
*/
HB_FUNC_STATIC( QWEBFRAME_PRINT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * par1 = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->print ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
