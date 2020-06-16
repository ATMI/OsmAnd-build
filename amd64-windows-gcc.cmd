@echo off

setlocal
set SRCLOC=%~dp0

set CMAKE_AR=C:/msys64/mingw64/bin/ar.exe

REM By default, 'mingw32-make' is used
if "%OSMAND_BUILD_TOOL%"=="" (
	set OSMAND_BUILD_TOOL=mingw32-make
)

set OSMAND_CROSSPLATFORM_TARGET=amd64-windows-gcc
"%SRCLOC%utils\%OSMAND_BUILD_TOOL%.cmd" %*

endlocal
