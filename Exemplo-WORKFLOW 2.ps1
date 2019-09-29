Workflow WorkflowDemorado
{
while(1)
    {
    (get-date).ToString() + "Script demoradinho"
    Start-Sleep -Seconds 2
    }
}

$wfjob = WorkflowDemorado -AsJob
$wfjob

Receive-Job $wfjob
Suspend-Job $wfjob
Stop-Job $wfjob
Resume-job