(Get-Command -Module ActiveDirectory).count

Get-Command New-ad*
Get-Command Get-ad*

#Para adicionar usuáro
New-ADUser Curso.POSH

Get-ADUSer mayconcarlos -Properties LastLogonDate
Get-ADUSer -Filter * | where {$_.enabled -eq $false}

#Para exportar CSV
Get-ADUSer -Filter * -Properties * | Export-csv C:\users\MayconCarlos\listauser.csv
Get-ADUSer -Filter * -Properties * | select -Property GivenName, DisplayName


# Para importar CSV 
Import-Csv C:\users\MayconCarlos\listauser.csv