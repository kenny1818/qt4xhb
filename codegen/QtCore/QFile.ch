/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QFile::FileError
*/
#define QFile_NoError                                                0
#define QFile_ReadError                                              1
#define QFile_WriteError                                             2
#define QFile_FatalError                                             3
#define QFile_ResourceError                                          4
#define QFile_OpenError                                              5
#define QFile_AbortError                                             6
#define QFile_TimeOutError                                           7
#define QFile_UnspecifiedError                                       8
#define QFile_RemoveError                                            9
#define QFile_RenameError                                            10
#define QFile_PositionError                                          11
#define QFile_ResizeError                                            12
#define QFile_PermissionsError                                       13
#define QFile_CopyError                                              14

/*
enum QFile::FileHandleFlag
flags QFile::FileHandleFlags
*/
#define QFile_AutoCloseHandle                                        0x0001
#define QFile_DontCloseHandle                                        0

/*
enum QFile::MemoryMapFlags
*/
#define QFile_NoOptions                                              0

/*
enum QFile::Permission
flags QFile::Permissions
*/
#define QFile_ReadOwner                                              0x4000
#define QFile_WriteOwner                                             0x2000
#define QFile_ExeOwner                                               0x1000
#define QFile_ReadUser                                               0x0400
#define QFile_WriteUser                                              0x0200
#define QFile_ExeUser                                                0x0100
#define QFile_ReadGroup                                              0x0040
#define QFile_WriteGroup                                             0x0020
#define QFile_ExeGroup                                               0x0010
#define QFile_ReadOther                                              0x0004
#define QFile_WriteOther                                             0x0002
#define QFile_ExeOther                                               0x0001