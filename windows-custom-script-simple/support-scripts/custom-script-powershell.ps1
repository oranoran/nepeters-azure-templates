﻿$cred = Get-Credential
$script = "https://raw.githubusercontent.com/neilpeterson/nepeters-azure-templates/master/windows-custom-script-simple/support-scripts/Create-File.ps1"
$run = "Create-File.ps1"
$name = "custom-script"
$rgroup = ""
$vmname = ""
$location = "West US"

Login-AzureRmAccount -Credential $cred
Set-AzureRmVMCustomScriptExtension -ResourceGroupName $grroup -VMName $vmname -Name $name -FileUri $script -Run $run -Location $location