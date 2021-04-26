# YOOHOO! IF YOU WANNA EDIT THIS CLONE IT FROM GITHUB!

write-output "Win10Reg"


function BKC
{
    $BKE = Test-Path -Path $env:USERPROFILE\APPDATA\Blondekid
    IF ($BKE = "$true") {
        Write-output "File check passed"
        HOME
    } ELSE {
    New-Item -Path $env:USERPROFILE\APPDATA\Blondekid -Name "Blondekid" -ItemType "directory"
    Write-Output "Directory Created"
    HOME
    }
}

function  HOME
{
    Write-output "=========================="
    Write-Host "Pick A Program"
    Write-output "=========================="
    Write-Host " 1 = Hilight Editor"
    Write-Host " 2 = Custom Control Panel Function"
    Write-Host " 3 = Disable Cortana"
    Write-Host " 4 = Custom CMD Font"
    Write-Host " H = Help Menu"
    Write-output "=========================="
    $op1 = Read-Host "Pick an option:  "
    write-output $op1
    if ($op1 -eq "1"){
        HLE
        }
    elseif ($op1 -eq "2"){
        ctrlpnl
        }
    elseif ($op1 -eq "3"){
        cortana
        }    
    elseif ($op1 -eq "4"){
        bruh
        }
    elseif ($op1 -eq "H"){
        HELP
        }


}


function HLE
{


    Write-Host "Enter the RGB Values: 0 - 255"
    $HLER = Read-Host "What is the Red Value: "
    $HLEG = Read-Host "What is the Green Value: "
    $HLEB = Read-Host "What is the Blue Value: "
    Write-Host "Red = $HLER, Green = $HLEG, Blue = $HLEB, Correct?"
    pause
    Set-Itemproperty -Path 'HKCU:\Control Panel\Colors' -Name 'Hilight' -Value "$HLER $HLEG $HLEB"
    Write-Host "Completed!"
    HOME
}


function Cortana
{
    $op2 = Read-Host = "Disable Cortana [Y/N]"
    If ($op2 -eq "Y")
        {
        Set-ItemProperty -Path 'HKCM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCortana' -Value "00000000"
    } else {
        HOME
    }
}

function CtrlPnl
{
    $Guid = New-Guid
    $CPLName = Read-Host "Enter the Name"
    $CPLDesc = Read-Host "Enter a Description"
    $CPLCom = Read-Host "Enter .exe path or Batch/PS command"
    $IconPath = Read-Host "Path to Icon"
    Write-Host "Begin Import"
    pause

    Set-Location -Path "Registry::HKEY_CLASSES_ROOT"

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\" -Name "{$Guid}"
    New-ItemProperty "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}" -Name "(Default)" -Value "$CPLName" -PropertyType "String"
    New-ItemProperty "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}" -Name "InfoTip" -Value "$CPLDesc" -PropertyType "String"

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}" -Name "DefaultIcon"
    New-ItemProperty "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}\DefaultIcon" -Name "(Default)" -Value "$IconPath" -PropertyType "String"
   
    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}" -Name "Shell"
    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}\Shell" -Name "Open"
    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}\shell\Open" -Name "Command"
    New-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}\shell\Open\Command" -Name "(Default)" -Value "$CPLCom" -PropertyType "String"
    New-Item -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\" -Name "{$Guid}"
    New-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{$Guid}" -Name "(Default)" -Value "$CPLName" -PropertyType "String"
    
    pause
    HOME
}




function HELP
{
ECHO "======================================="
ECHO "Hilight Editor - A tool that edits the way text is hilighted, Like on your desktop icons and text."
ECHO "======================================="
ECHO "Custom control panel function - Adds a custom control panel function that does what you define."
ECHO "======================================="
ECHO "Disable Cortana - Truly Disables Cortana :)"
ECHO "======================================="
ECHO "Custom CMD Font - Takes a .TTF You Define and loads it into the command prompt."
ECHO "======================================="
pause
home
}


function CCMD
{
   
}



function bruh
{
    write-output "Not done yet..."
    home
}


BKC