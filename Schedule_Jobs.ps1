clear-host

Get-Command -Module PSScheduledJob | Sort-Object Noun

$diario = New-JobTrigger -Daily -at 2pm
$umavez = New-JobTrigger -Once - At (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

Register-ScheduledJob -Name Backup -Trigger $diario -ScriptBlock {
Copy-Item C:\Users\MayconCarlos\Desktop\Maycon\*.* C:\Users\MayconCarlos\Desktop\Maycon\New Forlder -Recurse -Force
}

Get-ScheduledJob Backup | Get-JobTrigger