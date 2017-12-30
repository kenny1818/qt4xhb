$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QSIZE
#endif

CLASS QFontComboBox INHERIT QComboBox

   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD fontFilters
   METHOD setFontFilters
   METHOD setWritingSystem
   METHOD writingSystem
   METHOD sizeHint
   METHOD setCurrentFont

   METHOD onCurrentFontChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFontComboBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QFontComboBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QFont currentFont () const
$method=|QFont|currentFont|

$prototype=FontFilters fontFilters () const
$method=|QFontComboBox::FontFilters|fontFilters|

$prototype=void setFontFilters ( FontFilters filters )
$method=|void|setFontFilters|QFontComboBox::FontFilters

$prototype=void setWritingSystem ( QFontDatabase::WritingSystem script )
$method=|void|setWritingSystem|QFontDatabase::WritingSystem

$prototype=QFontDatabase::WritingSystem writingSystem () const
$method=|QFontDatabase::WritingSystem|writingSystem|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void setCurrentFont ( const QFont & font )
$method=|void|setCurrentFont|const QFont &

#pragma ENDDUMP
