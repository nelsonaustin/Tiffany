Write-Host  -ForegroundColor Yellow "Starting Tiffany Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "=================== Tiffany & Co. =====================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win11 22H2 | English | Enterprise" -ForegroundColor Yellow
Write-Host "2: Zero-Touch Win10 22H2 | English | Enterprise" -ForegroundColor Yellow
Write-Host "3: Zero-Touch Win10 20H2 | English | Enterprise" -ForegroundColor Yellow
Write-Host "4: I'll select it myself"-ForegroundColor Yellow
Write-Host "5: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

#Import-Module OSD -Force
#Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage en-us -OSBuild 22H2 -OSVersion 'Windows 11' -OSEdition Enterprise -ZTI } 
    '2' { Start-OSDCloud -OSLanguage en-us -OSBuild 22H2 -OSVersion 'Windows 10' -OSEdition Enterprise -ZTI }
    '3' { Start-OSDCloud -OSLanguage en-us -OSBuild 20H2 -OSVersion 'Windows 10' -OSEdition Enterprise -ZTI } 
    '4' { Start-OSDCloud	} 
    '5' { Exit		}
}

wpeutil reboot
