#Exempo do comando FOREACH

cls
#foreach($numeros in 1,2,3,4,5,6,7,8) {echo $numeros}
foreach ($arquivos in Get-ChildItem) {
if ($arquivos.IsReadOnly){
write-host $arquivos.FullName}
}



#mais Exemplo
Get-Process Notepad
Get-Process Notepad | foreach kill