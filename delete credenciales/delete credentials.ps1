$key_dat =@((cmdkey /listall | Where-Object{$_ -like "*SSO_POP_Device*"}).replace("Target: ",""))
for($k =0; $k -le ($key_dat.Count -1); $k++)
{
[string]$dele_data =$key_dat[$k].split()[-1]
cmdkey /delete:$dele_data
}