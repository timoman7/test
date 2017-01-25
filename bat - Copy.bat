echo OFF
:10
tasklist /FO "CSV" > yes.txt
TIMEOUT 1 /nobreak
goto 10
pause