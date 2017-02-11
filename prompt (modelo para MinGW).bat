rem
rem Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4
rem
rem Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>
rem
rem Prompt de comando para utiliza��o do Qt4xHb com MinGW.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programa��o instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instala��o do Qt Framework.
set QTDIR=C:\Qt\4.8.7

rem Pasta da instala��o do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instala��o do compilador C/C++.
set CPPDIR=C:\MinGW32

rem Configura a vari�vel PATH, conforme as vari�veis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Pasta include do Qt4xHb.
set QT4XHB_INC_DIR=include

rem Pasta lib do Qt4xHb.
set QT4XHB_LIB_DIR=lib

%ComSpec%

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QT4XHB_INC_DIR=
set QT4XHB_LIB_DIR=

pause
