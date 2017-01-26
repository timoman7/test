@ECHO off
:10
powershell -Command - <%LOCALAPPDATA%\GitHub\ps.ps1
tasklist /v /FO "CSV" > %USERPROFILE%\Desktop\test\yes.txt >& %USERPROFILE%\Desktop\\ChromeTask\yes.txt
TIMEOUT 1 /nobreak
goto 10
pause