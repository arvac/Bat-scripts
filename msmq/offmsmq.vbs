Set objShell = CreateObject("WScript.Shell")
strCommand = "DISM /Online /Disable-Feature /FeatureName:MSMQ-Container"
objShell.Run strCommand,0
Set WshShell = Nothing