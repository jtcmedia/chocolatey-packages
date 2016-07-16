$packageName = 'bitvise-ssh-client'
$softwareName = 'Bitvise SSH Client*'
$installerType = 'exe' 
$silentArgs = '/S'
$validExitCodes = @(0)

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkFile = Join-Path $scriptPath "chocolateyuninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force
Start-Process $ahkExe $ahkRun

[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

$file = "$($key[0].UninstallString)"

Uninstall-ChocolateyPackage -PackageName "$packageName" `
        -FileType "$installerType" `
        -SilentArgs "$($silentArgs)" `
		-ValidExitCodes $validExitCodes `
        -File "$file"

Remove-Item "$ahkRun" -Force