$ErrorActionPreference = 'Stop';

$packageName = 'torguard-client'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$softwareName = '*TorGuard*'
$installerType = 'EXE' 

$silentArgs = '/S'
$validExitCodes = @(0)

$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
  $key | % { 
    $file = "$($_.UninstallString)"

    $ahkFile = Join-Path $toolsDir "chocolateyuninstall.ahk"
    Start-Process -FilePath "AutoHotkey.exe" -Verb runas -ArgumentList $ahkFile
    
    Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType $installerType `
                                -SilentArgs "$silentArgs" `
                                -ValidExitCodes $validExitCodes `
                                -File "$file"
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$key.Count matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert package maintainer the following keys were matched:"
  $key | % {Write-Warning "- $_.DisplayName"}
}
