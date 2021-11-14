﻿#JUAN PABLO RANGEL GUEVARA 
#ENRIQUE ROCHA MEDINA

$Python = "python.exe"


$Script = "C:\Users\juanp\Downloads\TAREAE13\BasicOne.py"


function Ver-StatusPerfil{  
    param([Parameter(Mandatory)] [ValidateSet("Public","Private")] [string] $perfil)  
    $status = Get-NetFirewallProfile -Name $perfil  
    Write-Host "Perfil:" $perfil  
    if($status.enabled){  
        write-Host "---------------"
        Write-Host "Status: Activado" 
        write-Host "---------------" 
    } else{  
        write-Host "---------------"
        Write-Host "Status: Desactivado"  
        write-Host "---------------"
    }  
}  


Ver-StatusPerfil | & $Python $Script