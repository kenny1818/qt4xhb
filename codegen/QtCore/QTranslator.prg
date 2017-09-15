$header

#include "hbclass.ch"

CLASS QTranslator INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD load1
   METHOD load2
   METHOD load
   METHOD translate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTranslator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QLocale>

/*
QTranslator(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
virtual bool isEmpty() const
*/
$virtualMethod=|bool|isEmpty|

/*
bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
*/
$method=|bool|load,load1|const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString()

/*
bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
*/
$method=|bool|load,load2|const QLocale &,const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString()

/*
bool load(const uchar * data, int len, const QString & directory = QString())
*/
$method=|bool|load,load3|const uchar *,int,const QString &=QString()

//[1]bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
//[2]bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
//[3]bool load(const uchar * data, int len, const QString & directory = QString())

HB_FUNC_STATIC( QTRANSLATOR_LOAD )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QTRANSLATOR_LOAD1 );
  }
  else if( ISBETWEEN(2,5) && ISQLOCALE(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISCHAR(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QTRANSLATOR_LOAD2 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTRANSLATOR_LOAD2 );
  }
}

/*
virtual QString translate(const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1) const
*/
$virtualMethod=|QString|translate|const char *,const char *,const char *=0,int=-1

#pragma ENDDUMP
