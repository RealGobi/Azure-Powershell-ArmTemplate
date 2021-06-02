$VMs = Get-AzResource -TagName "School-demo" -TagValue "13.4.67"; 

foreach($VM in $VMs) { 
   Stop-AzVM -Name $VM.Name -ResourceGroupName $VM.ResourceGroupName
    -Confirm:$false -force 
   }
