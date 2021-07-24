@echo off
set BASE_PATH=%~dp0
set DATE_TIME=%DATE:/=%_%TIME::=%
set DATE_TIME=%DATE_TIME: =0%
set DATE_TIME=%DATE_TIME:.=%
set LOG_PATH=%BASE_PATH%@log\%DATE_TIME%.log

for /f "delims=" %%i in (target.txt) do (
	call :BKUP "%%i"
)

pause
exit /b

:BKUP

set ARG1=%~1

if "%ARG1:~0,1%"=="#" (
	set BACKUP_PATH=%BASE_PATH%%ARG1:~1%\%DATE_TIME%
	exit /b
)
robocopy %ARG1% %BACKUP_PATH%\%~n1 /E  /LOG+:%LOG_PATH% /NP


exit /b