
<# 
Test-AzResourceGroupDeployment `
-ResourceGroupName $rg `
-TemplateFile 'vm.json'`
-TemplateParameterFile './vm.parameter.json' #>
$rg = 'jimmy-AA-Resource'

    New-AzResourceGroupDeployment `
    -Name "new-vm-${get-date -Format yyMMddHHmm}" `
    -ResourceGroupName $rg `
    -TemplateFile 'vm.json' `
    -TemplateParameterFile './vm.parameter.json' 