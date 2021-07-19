$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Get-Item "$toolsDir\*x86_64-Win_GUI.exe"
$pp = Get-PackageParameters
$shortcutName = 'HandBrake.lnk'
$shortcut = Join-Path ([Environment]::GetFolderPath("CommonDesktopDirectory")) $shortcutName

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  file          = $fileLocation
  fileType      = 'exe'
  softwareName  = 'HandBrake*'
  silentArgs    = '/S'
  validExitCodes= @(0)
}
[array]$key = Get-UninstallRegistrykey $packageArgs.softwareName
if ($key.Count -eq 1) {
  Write-Host "$($packageArgs.packageName) already installed"
  Write-Host "Need to uninstall before upgrading..."
  Uninstall-ChocolateyPackage -packageName $packageArgs.packageName `
    -fileType $packageArgs.fileType `
    -silentArgs $packageArgs.silentArgs `
    -validExitCodes $packageArgs.validExitCodes `
    -file (Get-UninstallRegistrykey $packageArgs.softwareName).UninstallString.Trim('"')
}
elseif ($key.Count -gt 1) {
  Write-Warning "$($key.Count) matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "This will most likely cause handbrake not to upgrade correctly."
  Write-Warning "Please uninstall Handbrake before attempting an upgrade."
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item $toolsDir\*x86_64-Win_GUI.exe

if ($pp['noicon']) {
	if (Test-Path $shortcut) {
		Remove-Item $shortcut
		Write-Host -ForegroundColor green 'Removed ' $shortcut
	} else {
		Write-Host -ForegroundColor yellow 'Did not find ' $shortcut
	}
}