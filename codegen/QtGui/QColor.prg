$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD alpha
   METHOD alphaF
   METHOD black
   METHOD blackF
   METHOD blue
   METHOD blueF
   METHOD convertTo
   METHOD cyan
   METHOD cyanF
   METHOD darker
   METHOD getCmyk
   METHOD getCmykF
   METHOD getHsl
   METHOD getHslF
   METHOD getHsv
   METHOD getHsvF
   METHOD getRgb
   METHOD getRgbF
   METHOD green
   METHOD greenF
   METHOD hslHue
   METHOD hslHueF
   METHOD hslSaturation
   METHOD hslSaturationF
   METHOD hsvHue
   METHOD hsvHueF
   METHOD hsvSaturation
   METHOD hsvSaturationF
   METHOD hue
   METHOD hueF
   METHOD isValid
   METHOD lighter
   METHOD lightness
   METHOD lightnessF
   METHOD magenta
   METHOD magentaF
   METHOD name
   METHOD red
   METHOD redF
   METHOD rgb
   METHOD rgba
   METHOD saturation
   METHOD saturationF
   METHOD setAlpha
   METHOD setAlphaF
   METHOD setBlue
   METHOD setBlueF
   METHOD setCmyk
   METHOD setCmykF
   METHOD setGreen
   METHOD setGreenF
   METHOD setHsl
   METHOD setHslF
   METHOD setHsv
   METHOD setHsvF
   METHOD setNamedColor
   METHOD setRed
   METHOD setRedF
   METHOD setRgb1
   METHOD setRgb2
   METHOD setRgb
   METHOD setRgbF
   METHOD setRgba
   METHOD spec
   METHOD toCmyk
   METHOD toHsl
   METHOD toHsv
   METHOD toRgb
   METHOD value
   METHOD valueF
   METHOD yellow
   METHOD yellowF
   METHOD colorNames
   METHOD fromCmyk
   METHOD fromCmykF
   METHOD fromHsl
   METHOD fromHslF
   METHOD fromHsv
   METHOD fromHsvF
   METHOD fromRgb1
   METHOD fromRgb2
   METHOD fromRgbF
   METHOD fromRgba
   METHOD isValidColor

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QColor>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QColor ()
*/
$constructor=|new1|

/*
QColor ( int r, int g, int b, int a = 255 )
*/
$constructor=|new2|int,int,int,int=255

/*
QColor ( QRgb color )
*/
$constructor=|new3|QRgb

/*
QColor ( const QString & name )
*/
$constructor=|new4|const QString &

/*
QColor ( const char * name )
*/
$constructor=|new5|const char *

/*
QColor ( const QColor & color )
*/
$constructor=|new6|const QColor &

/*
QColor ( Qt::GlobalColor color )
*/
$constructor=|new7|Qt::GlobalColor

//[1]QColor ()
//[2]QColor ( int r, int g, int b, int a = 255 )
//[3]QColor ( QRgb color )
//[4]QColor ( const QString & name )
//[5]QColor ( const char * name )
//[6]QColor ( const QColor & color )
//[7]QColor ( Qt::GlobalColor color )

// TODO: conflitos entre [3] e [7] e [4] e [5]

HB_FUNC_STATIC( QCOLOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQCOLOR(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW6 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int alpha () const
*/
$method=|int|alpha|

/*
qreal alphaF () const
*/
$method=|qreal|alphaF|

/*
int black () const
*/
$method=|int|black|

/*
qreal blackF () const
*/
$method=|qreal|blackF|

/*
int blue () const
*/
$method=|int|blue|

/*
qreal blueF () const
*/
$method=|qreal|blueF|

/*
QColor convertTo ( Spec colorSpec ) const
*/
$method=|QColor|convertTo|QColor::Spec

/*
int cyan () const
*/
$method=|int|cyan|

/*
qreal cyanF () const
*/
$method=|qreal|cyanF|

/*
QColor darker ( int factor = 200 ) const
*/
$method=|QColor|darker|int=200

/*
void getCmyk ( int * c, int * m, int * y, int * k, int * a = 0 )
*/
$method=|void|getCmyk|int *,int *,int *,int *,int *=0

/*
void getCmykF ( qreal * c, qreal * m, qreal * y, qreal * k, qreal * a = 0 )
*/
$method=|void|getCmykF|qreal *,qreal *,qreal *,qreal *,qreal *=0

/*
void getHsl ( int * h, int * s, int * l, int * a = 0 ) const
*/
$method=|void|getHsl|int *,int *,int *,int *=0

/*
void getHslF ( qreal * h, qreal * s, qreal * l, qreal * a = 0 ) const
*/
$method=|void|getHslF|qreal *,qreal *,qreal *,qreal *=0

/*
void getHsv ( int * h, int * s, int * v, int * a = 0 ) const
*/
$method=|void|getHsv|int *,int *,int *,int *=0

/*
void getHsvF ( qreal * h, qreal * s, qreal * v, qreal * a = 0 ) const
*/
$method=|void|getHsvF|qreal *,qreal *,qreal *,qreal *=0

/*
void getRgb ( int * r, int * g, int * b, int * a = 0 ) const
*/
$method=|void|getRgb|int *,int *,int *,int *=0

/*
void getRgbF ( qreal * r, qreal * g, qreal * b, qreal * a = 0 ) const
*/
$method=|void|getRgbF|qreal *,qreal *,qreal *,qreal *=0

/*
int green () const
*/
$method=|int|green|

/*
qreal greenF () const
*/
$method=|qreal|greenF|

/*
int hslHue () const
*/
$method=|int|hslHue|

/*
qreal hslHueF () const
*/
$method=|qreal|hslHueF|

/*
int hslSaturation () const
*/
$method=|int|hslSaturation|

/*
qreal hslSaturationF () const
*/
$method=|qreal|hslSaturationF|

/*
int hsvHue () const
*/
$method=|int|hsvHue|

/*
qreal hsvHueF () const
*/
$method=|qreal|hsvHueF|

/*
int hsvSaturation () const
*/
$method=|int|hsvSaturation|

/*
qreal hsvSaturationF () const
*/
$method=|qreal|hsvSaturationF|

/*
int hue () const
*/
$method=|int|hue|

/*
qreal hueF () const
*/
$method=|qreal|hueF|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QColor lighter ( int factor = 150 ) const
*/
$method=|QColor|lighter|int=150

/*
int lightness () const
*/
$method=|int|lightness|

/*
qreal lightnessF () const
*/
$method=|qreal|lightnessF|

/*
int magenta () const
*/
$method=|int|magenta|

/*
qreal magentaF () const
*/
$method=|qreal|magentaF|

/*
QString name () const
*/
$method=|QString|name|

/*
int red () const
*/
$method=|int|red|

/*
qreal redF () const
*/
$method=|qreal|redF|

/*
QRgb rgb () const
*/
$method=|QRgb|rgb|

/*
QRgb rgba () const
*/
$method=|QRgb|rgba|

/*
int saturation () const
*/
$method=|int|saturation|

/*
qreal saturationF () const
*/
$method=|qreal|saturationF|

/*
void setAlpha ( int alpha )
*/
$method=|void|setAlpha|int

/*
void setAlphaF ( qreal alpha )
*/
$method=|void|setAlphaF|qreal

/*
void setBlue ( int blue )
*/
$method=|void|setBlue|int

/*
void setBlueF ( qreal blue )
*/
$method=|void|setBlueF|qreal

/*
void setCmyk ( int c, int m, int y, int k, int a = 255 )
*/
$method=|void|setCmyk|int,int,int,int,int=255

/*
void setCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
*/
$method=|void|setCmykF|qreal,qreal,qreal,qreal,qreal=1.0

/*
void setGreen ( int green )
*/
$method=|void|setGreen|int

/*
void setGreenF ( qreal green )
*/
$method=|void|setGreenF|qreal

/*
void setHsl ( int h, int s, int l, int a = 255 )
*/
$method=|void|setHsl|int,int,int,int=255

/*
void setHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
*/
$method=|void|setHslF|qreal,qreal,qreal,qreal=1.0

/*
void setHsv ( int h, int s, int v, int a = 255 )
*/
$method=|void|setHsv|int,int,int,int=255

/*
void setHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
*/
$method=|void|setHsvF|qreal,qreal,qreal,qreal=1.0

/*
void setNamedColor ( const QString & name )
*/
$method=|void|setNamedColor|const QString &

/*
void setRed ( int red )
*/
$method=|void|setRed|int

/*
void setRedF ( qreal red )
*/
$method=|void|setRedF|qreal

/*
void setRgb ( int r, int g, int b, int a = 255 )
*/
$method=|void|setRgb,setRgb1|int,int,int,int=255

/*
void setRgb ( QRgb rgb )
*/
$method=|void|setRgb,setRgb2|QRgb

//[1]void setRgb ( int r, int g, int b, int a = 255 )
//[2]void setRgb ( QRgb rgb )

HB_FUNC_STATIC( QCOLOR_SETRGB )
{
  if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLOR_SETRGB1 );
  }
  //else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  //{
  //  HB_FUNC_EXEC( QCOLOR_SETRGB1 );
  //}
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_SETRGB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
*/
$method=|void|setRgbF|qreal,qreal,qreal,qreal=1.0

/*
void setRgba ( QRgb rgba )
*/
$method=|void|setRgba|QRgb

/*
Spec spec () const
*/
$method=|QColor::Spec|spec|

/*
QColor toCmyk () const
*/
$method=|QColor|toCmyk|

/*
QColor toHsl () const
*/
$method=|QColor|toHsl|

/*
QColor toHsv () const
*/
$method=|QColor|toHsv|

/*
QColor toRgb () const
*/
$method=|QColor|toRgb|

/*
int value () const
*/
$method=|int|value|

/*
qreal valueF () const
*/
$method=|qreal|valueF|

/*
int yellow () const
*/
$method=|int|yellow|

/*
qreal yellowF () const
*/
$method=|qreal|yellowF|

/*
static QStringList colorNames ()
*/
$staticMethod=|QStringList|colorNames|

/*
static QColor fromCmyk ( int c, int m, int y, int k, int a = 255 )
*/
$staticMethod=|QColor|fromCmyk|int,int,int,int,int=255

/*
static QColor fromCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
*/
$staticMethod=|QColor|fromCmykF|qreal,qreal,qreal,qreal,qreal=1.0

/*
static QColor fromHsl ( int h, int s, int l, int a = 255 )
*/
$staticMethod=|QColor|fromHsl|int,int,int,int=255

/*
static QColor fromHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
*/
$staticMethod=|QColor|fromHslF|qreal,qreal,qreal,qreal=1.0

/*
static QColor fromHsv ( int h, int s, int v, int a = 255 )
*/
$staticMethod=|QColor|fromHsv|int,int,int,int=255

/*
static QColor fromHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
*/
$staticMethod=|QColor|fromHsvF|qreal,qreal,qreal,qreal=1.0

/*
static QColor fromRgb ( QRgb rgb )
*/
$staticMethod=|QColor|fromRgb,fromRgb1|QRgb

/*
static QColor fromRgb ( int r, int g, int b, int a = 255 )
*/
$staticMethod=|QColor|fromRgb,fromRgb2|int,int,int,int=255

//[1]static QColor fromRgb ( QRgb rgb )
//[2]static QColor fromRgb ( int r, int g, int b, int a = 255 )

HB_FUNC_STATIC( QCOLOR_FROMRGB )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_FROMRGB1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLOR_FROMRGB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QColor fromRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
*/
$staticMethod=|QColor|fromRgbF|qreal,qreal,qreal,qreal=1.0

/*
static QColor fromRgba ( QRgb rgba )
*/
$staticMethod=|QColor|fromRgba|QRgb

/*
static bool isValidColor ( const QString & name )
*/
$staticMethod=|bool|isValidColor|const QString &

/*
int qAlpha ( QRgb rgba )
*/
HB_FUNC( QALPHA )
{
  RINT( qAlpha ( (QRgb) hb_parni(1) ) );
}

/*
int qBlue ( QRgb rgb )
*/
HB_FUNC( QBLUE )
{
  RINT( qBlue ( (QRgb) hb_parni(1) ) );
}

/*
int qGray ( int r, int g, int b )
*/
HB_FUNC( QGRAY1 )
{
  RINT( qGray ( PINT(1), PINT(2), PINT(3) ) );
}

/*
int qGray ( QRgb rgb )
*/
HB_FUNC( QGRAY2 )
{
  RINT( qGray ( (QRgb) hb_parni(1) ) );
}

//[1]int qGray ( int r, int g, int b )
//[2]int qGray ( QRgb rgb )

HB_FUNC( QGRAY )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGRAY1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAY2 );
  }
}

/*
int qGreen ( QRgb rgb )
*/
HB_FUNC( QGREEN )
{
  RINT( qGreen ( (QRgb) hb_parni(1) ) );
}

/*
int qRed ( QRgb rgb )
*/
HB_FUNC( QRED )
{
  RINT( qRed ( (QRgb) hb_parni(1) ) );
}

/*
QRgb qRgb ( int r, int g, int b )
*/
HB_FUNC( QRGB )
{
  hb_retni( qRgb ( PINT(1), PINT(2), PINT(3) ) );
}

/*
QRgb qRgba ( int r, int g, int b, int a )
*/
HB_FUNC( QRGBA )
{
  hb_retni( qRgba ( PINT(1), PINT(2), PINT(3), PINT(4) ) );
}

$extraMethods

#pragma ENDDUMP
