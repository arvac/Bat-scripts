$Credentials = (cmdkey /list | Where-Object {$_ -like "*Target=*"})
Foreach ($Target in $Credentials) {
    $Target = ($Target -split (":", 2) | Select-Object -Skip 1).substring(1)
    $Argument = "/delete:" + $Target
    Start-Process Cmdkey -ArgumentList $Argument -NoNewWindow -RedirectStandardOutput $False
    }