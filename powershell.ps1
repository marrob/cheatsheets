<#--- CHEAT 
# This is a comment in Powershell
--- STRING ARRAY ----

$argsArray = 
    "/BAUD=115200", #Speed
    "/C=5" ,        #Serial port COM5
    "/DS"           #Disable displaying the "New connection" dialog on startup
Start-Process -FilePath "C:\Program Files (x86)\teraterm\ttermpro.exe" -ArgumentList $argsArray

--- MAKE DIRECTORY ----
New-Item -ItemType directory -Path D:\_Proba_
new-item d:\__Poba2__ -ItemType directory
mkdir d:\_proba3_
--- PREVENT CONSOLE CLOSE ---
pause

--- WRITE TO CONSOLE ---
Write-Output "Hello World"
Write-Host "Hello"

--- WRITE WITH VARIABLE ---
$testVar = "World"
Write-Output "Hello $testVar" 

--- WAIT UNTIL KEYPRESSED
Read-Host -Prompt "The above error occurred. Press Enter to exit."

--- SQL SERVER ---
Stop-Service *SQL* -Force
Set-MpPreference -DisableRealtimeMonitoring $true

--- ANTIVIRUS ---
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -DisableRealtimeMonitoring $false
sc stop WinDefend
sc start WinDefend

--- WINDOWS UPDATE ---
# set the Windows Update service to "disabled"
sc.exe config wuauserv start=disabled

# display the status of the service
sc.exe query wuauserv

# stop the service, in case it is running
sc.exe stop wuauserv

# display the status again, because we're paranoid
sc.exe query wuauserv

# double check it's REALLY disabled - Start value should be 0x4
REG.exe QUERY HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv /v Start 

--- GLOBALS, COMPUTER NAME ---
$env:computername | Select-Object

--- IP, IPconfig ---
Get-NetIPAddress | Format-Table


<#--- MCEL181123 --- #>

Write-Host "Hello"

<#
$PrjName = "MCEL181123"
$WorkDirPath = "D:\@@@!ProjectS\MCEL181123"
Write-Output  "The $PrjName projcet is starting now..."

Start-Process -FilePath "MCEL181123.DsnWrk" -WorkingDirectory $WorkDirPath
Start-Process -FilePath "D:\@@@!ProjectS\MFWL130221\Lib\MCEL181123_App\MCEL181123.uvprojx"
Start-Process -FilePath "MCEL181123.docx" -WorkingDirectory $WorkDirPath
Start-Process -FilePath "MCEL181123.xlsx" -WorkingDirectory $WorkDirPath
#Start-Process -FilePath "OpenTerminal.ps1" -WorkingDirectory $WorkDirPath 
Start-Process -FilePath "Software\Konvolucio.MCEL181123\Konvolucio.MCEL181123.sln" -WorkingDirectory $WorkDirPath
Start-Process -FilePath "MCEL181123.seq" -WorkingDirectory "$WorkDirPath\Tests"
#>


$directory = "D:\@@@!ProjectS\KonvolucioApp\"

Set-Location $directory"\MALT200817.SW\";
Start-Process git -ArgumentList ('push ' + 'https://github.com/marrob/MALT200817.SW') -NoNewWindow -Wait 


#pause