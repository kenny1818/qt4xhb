%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLShader ( QGLShader::ShaderType type, QObject * parent = 0 )
$internalConstructor=|new1|QGLShader::ShaderType,QObject *=0

$prototype=QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = 0 )
$internalConstructor=|new2|QGLShader::ShaderType,const QGLContext *,QObject *=0

/*
[1]QGLShader ( QGLShader::ShaderType type, QObject * parent = 0 )
[2]QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = 0 )
*/

HB_FUNC_STATIC( QGLSHADER_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QGLShader_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQGLCONTEXT(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QGLShader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=bool compileSourceCode ( const char * source )
$method=|bool|compileSourceCode,compileSourceCode1|const char *

$prototype=bool compileSourceCode ( const QByteArray & source )
$method=|bool|compileSourceCode,compileSourceCode2|const QByteArray &

$prototype=bool compileSourceCode ( const QString & source )
$method=|bool|compileSourceCode,compileSourceCode3|const QString &

/*
[1]bool compileSourceCode ( const char * source )
[2]bool compileSourceCode ( const QByteArray & source )
[3]bool compileSourceCode ( const QString & source )
*/

HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=compileSourceCode

$prototypeV2=bool compileSourceFile( const QString & fileName )

$prototypeV2=bool isCompiled() const

$prototypeV2=QString log() const

$prototypeV2=GLuint shaderId() const

$prototypeV2=QGLShader::ShaderType shaderType() const

$prototypeV2=QByteArray sourceCode() const

$prototypeV2=static bool hasOpenGLShaders( QGLShader::ShaderType type, const QGLContext * context = 0 )

#pragma ENDDUMP
