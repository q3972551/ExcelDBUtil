@echo off

set FILE_FORMAT=java

setlocal enabledelayedexpansion

@echo on

for /f "delims=" %%i in ('"dir /a/b/on *.csv"') do (
set file=%%~fi
..\DataConverter.exe !file! %FILE_FORMAT% 0 com.db com.dbBase
)

@echo off

if not exist %FILE_FORMAT% md %FILE_FORMAT%

move *.java %FILE_FORMAT%
move *.bin %FILE_FORMAT%

pause