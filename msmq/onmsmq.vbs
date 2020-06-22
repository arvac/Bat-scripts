Set objShell = CreateObject("WScript.Shell")
strCommand = "DISM /Online /Enable-Feature /FeatureName:MSMQ-Container"
objShell.Run strCommand,0
Set WshShell = Nothing