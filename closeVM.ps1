 closeVm (val1 val2) {
 $varName = val1
 $varValue = val2
 $res = Get-AzResource -TagName $varName -TagValue $varValue
    if($res) {
    Stop-AzVM -TagName $varName -TagValue $varValue
    }
 }
 

  
  if(Get-AzResource -TagName “School-demo” -TagValue ‘13.4.67’) {
  Stop-AzVM -confirm:$false -Name "School-demo"
  }

    
  $VM = Get-AzResource -TagName "School-demo" -TagValue "13.4.67" && Stop-AzVM -Name $VM.Name -ResourceGroupName $VM.ResourceGroupName -confirm:$false

  $VMs = Get-AzResource -TagName "School-demo" -TagValue "13.4.67"; foreach($VM in $VMs) { Stop-AzVM -Name $VM.Name -ResourceGroupName $VM.ResourceGroupName -Confirm:$false -force }


  // notes from building powershell script