$header

#include "hbclass.ch"

CLASS QRegExp

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD cap
   METHOD captureCount
   METHOD capturedTexts
   METHOD caseSensitivity
   METHOD errorString
   METHOD exactMatch
   METHOD indexIn
   METHOD isEmpty
   METHOD isMinimal
   METHOD isValid
   METHOD lastIndexIn
   METHOD matchedLength
   METHOD pattern
   METHOD patternSyntax
   METHOD pos
   METHOD setCaseSensitivity
   METHOD setMinimal
   METHOD setPattern
   METHOD setPatternSyntax
   METHOD escape

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QRegExp>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QRegExp ()
*/
$constructor=|new1|

/*
QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
*/
$constructor=|new2|const QString &,Qt::CaseSensitivity=Qt::CaseSensitive,QRegExp::PatternSyntax=QRegExp::RegExp

/*
QRegExp ( const QRegExp & rx )
*/
$constructor=|new3|const QRegExp &

//[1]QRegExp ()
//[2]QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
//[3]QRegExp ( const QRegExp & rx )

HB_FUNC_STATIC( QREGEXP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QREGEXP_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QREGEXP_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QREGEXP_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString cap ( int nth = 0 ) const
*/
$method=|QString|cap|int=0

/*
int captureCount () const
*/
$method=|int|captureCount|

/*
QStringList capturedTexts () const
*/
$method=|QStringList|capturedTexts|

/*
Qt::CaseSensitivity caseSensitivity () const
*/
$method=|Qt::CaseSensitivity|caseSensitivity|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
bool exactMatch ( const QString & str ) const
*/
$method=|bool|exactMatch|const QString &

/*
int indexIn ( const QString & str, int offset = 0, CaretMode caretMode = CaretAtZero ) const
*/
$method=|int|indexIn|const QString &,int=0,QRegExp::CaretMode=QRegExp::CaretAtZero

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isMinimal () const
*/
$method=|bool|isMinimal|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
int lastIndexIn ( const QString & str, int offset = -1, CaretMode caretMode = CaretAtZero ) const
*/
$method=|int|lastIndexIn|const QString &,int=-1,QRegExp::CaretMode=QRegExp::CaretAtZero

/*
int matchedLength () const
*/
$method=|int|matchedLength|

/*
QString pattern () const
*/
$method=|QString|pattern|

/*
PatternSyntax patternSyntax () const
*/
$method=|QRegExp::PatternSyntax|patternSyntax|

/*
int pos ( int nth = 0 ) const
*/
$method=|int|pos|int=0

/*
void setCaseSensitivity ( Qt::CaseSensitivity cs )
*/
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

/*
void setMinimal ( bool minimal )
*/
$method=|void|setMinimal|bool

/*
void setPattern ( const QString & pattern )
*/
$method=|void|setPattern|const QString &

/*
void setPatternSyntax ( PatternSyntax syntax )
*/
$method=|void|setPatternSyntax|QRegExp::PatternSyntax

/*
static QString escape ( const QString & str )
*/
$staticMethod=|QString|escape|const QString &

$extraMethods

#pragma ENDDUMP
