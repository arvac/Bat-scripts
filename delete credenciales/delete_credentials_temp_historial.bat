@echo off
taskkill /f /im iexplore.exe
cmdkey.exe /list > "%TEMP%\List.txt"
findstr.exe Target "%TEMP%\List.txt" > "%TEMP%\tokensonly.txt"
FOR /F "tokens=1,2 delims= " %%G IN (%TEMP%\tokensonly.txt) DO cmdkey.exe /delete:%%H
del "%TEMP%\List.txt" /s /f /q
del "%TEMP%\tokensonly.txt" /s /f /q

cmdkey.exe /delete "MicrosoftAccount:target=SSO_POP_Device"
cmdkey.exe /delete ""

del "%tmp%\*.*" /s /q /f
FOR /d %%p IN ("%tmp%\*.*") DO rmdir "%%p" /s /q
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
explorer c:\Windows\Temp
cleanmgr
rundll32.exe keymgr.dll, KRShowKeyMgr

echo All done
pause