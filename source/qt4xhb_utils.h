/*

  Qt4xHb - biblioteca de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

void _qt4xhb_createReturnClass ( void * ptr, const char * classname );
void _qt4xhb_createReturnClass ( const void * ptr, const char * classname );
void _qt4xhb_createReturnClass ( void * ptr, const char * classname, bool destroy );
void _qt4xhb_createReturnClass ( const void * ptr, const char * classname, bool destroy );
void _qt4xhb_createReturnQObjectClass ( QObject * ptr, const char * classname );
void _qt4xhb_createReturnQObjectClass ( const QObject * ptr, const char * classname );
void _qt4xhb_createReturnQWidgetClass ( QWidget * ptr, const char * classname );
void _qt4xhb_createReturnQWidgetClass ( const QWidget * ptr, const char * classname );
bool _qt4xhb_isClassDerivedFrom ( const char * className1, const char * className2 );
bool _qt4xhb_isObjectDerivedFrom ( int numpar, const QString className );
QStringList _qt4xhb_convert_array_parameter_to_qstringlist ( int numpar );
void _qt4xhb_storePointerAndFlag (void * pointer, bool flag);
void _qt4xhb_convert_qstringlist_to_array ( const QStringList list );
