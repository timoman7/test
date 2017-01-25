@ECHO off
:10
powershell -Command - <C:\Users\tc20791\AppData\Local\GitHub\ps.ps1
tasklist /FO "CSV" > "C:\Users\tc20791\Desktop\test\yes.txt"
TIMEOUT 1 /nobreak
goto 10
pause