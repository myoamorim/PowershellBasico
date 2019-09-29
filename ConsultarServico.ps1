#Consultar Serviço do Windows
$Serv = Get-Service -Name Spooler
If ($Serv.Status -eq "running")
    {
    Write-host "Em execução"
    }
    Else
    {
    Write-Host "Serviço Parado"
    }