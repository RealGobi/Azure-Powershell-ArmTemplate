$rg = 'jimmy-AA-Resource'

New-AzResourceGroupDeployment `
    -Name 'new-vm' `
    -ResourceGroupName $rg `
    -TemplateFile 'vm.json' 