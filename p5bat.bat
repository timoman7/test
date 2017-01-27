@ECHO off
:10
tasklist /v /FO "CSV" > %USERPROFILE%\Desktop\test\tempTxt.txt
copy %USERPROFILE%\Desktop\test\tempTxt.txt %USERPROFILE%\Desktop\test\taskTxt.txt
:fix
ping 1.1.1.1 /w 2000 /n 1 > nul:
setlocal enableextensions
for /f "tokens=1*" %%a in (%USERPROFILE%\Desktop\test\taskTxt.txt) do (
set taskL=%%a
)
for /f "tokens=1*" %%a in (%USERPROFILE%\Desktop\test\tempTxt.txt) do (
set myvar=%%a 
)
echo %taskL%
set _taskL=%taskL:"=%
set _myvar=%myvar:"=%
set __taskL=%_taskL:,= %
set __myvar=%_myvar:,= %
SET _endbitL=%__taskL:* =%
SET _endbitM=%__myvar:* =%
CALL SET ___taskL=%%__taskL:%_endbitL%=%%
CALL SET ___myvar=%%__myvar:%_endbitM%=%%
IF ___taskL EQU ___myvar (
	echo Yes
)
IF /I ___taskL NEQ ___myvar (
	echo Copying
	copy %USERPROFILE%\Desktop\test\tempTxt.txt %USERPROFILE%\Desktop\test\yes.txt
	powershell -Command - <screencap.ps1
	git add .
	git commit -a --no-verify --allow-empty-message --no-edit
	git push --all
	endlocal
	goto 10
) else (
	echo Going to fix
	echo %___taskL%
	echo %___myvar%
	endlocal
	goto fix
)
goto 10
pause