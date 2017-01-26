@ECHO off
:10
powershell -Command - <ps.ps1
tasklist /FO "CSV" > yes.txt
TIMEOUT 1 /nobreak
goto 10
pause