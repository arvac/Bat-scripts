Set WshShell = CreateObject("Wscript.Shell")
Set WshEnv = WshShell.Environment("PRocess")
WshShell.Run "runas.exe /user:" & "verwalter" & " " & Chr(34) & "cmd /C start C:\baninter\onmsmq.vbs" & Chr(34)
Wscript.Sleep 800
WshShell.AppActivate WshEnv("SystemRoot") & "\system32\runas.exe"
Wscript.Sleep 200
WshShell.SendKeys  "cH6VEyBz" & "~"

Wscript.Sleep 5000
Set WshShell = Nothing
Set WshEn = Nothing