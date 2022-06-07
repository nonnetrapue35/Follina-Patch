#################
# Follina Patch #
#################


######################################################
# Follina is a 0-day exploit concern MSDT tool.      #
# This software is a one-click mitigation to attempt #
# Microsoft patch                                    #
######################################################


# Variable

cls

$regsave = "$env:APPDATA\regsave.reg"
$hive = "HKEY_CLASSES_ROOT"

# Connect Hive 

if (!(Get-Item -Path "HKCR:\" -ErrorAction SilentlyContinue)){

    Try{
        New-PSDrive -PSProvider Registry -Root $hive -Name HKCR  
    }
    Catch {

        Write-Error $_.Error
        Read-Host "Appuyez pour quitter"
    }

}

Write-Host -ForegroundColor Green "Ruche Chargée"

Start-Sleep -Seconds 5

cls

if (Get-Item HKCR:\ms-msdt){
    Write-Warning -Message "Version de Windows Vulnérable"
    Write-Host "Sauvegarde de la ruche, veuillez-patienter"
    
    if (!(Get-Item -Path $regsave -ErrorAction SilentlyContinue)){
        reg export $hive\ms-msdt $regsave
        Read-Host "Appuyez sur une touche pour continuer"
        cls
        
        }
    
        Write-Host "Suppression de la clé de registre, veuillez patienter..."
        
        reg delete $hive\ms-msdt /f

        Read-Host "Appuyez sur une touche pour continuer"

        exit
    }

