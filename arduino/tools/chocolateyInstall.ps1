$ErrorActionPreference = 'Stop';

$packageName= 'arduino'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Get-Item "$toolsDir\*_x32.exe"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  file          = $fileLocation
  softwareName  = 'Arduino*'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

$ahkFile = Join-Path $toolsDir "chocolateyInstall.ahk"
Start-Process 'AutoHotkey' $ahkFile

Install-ChocolateyInstallPackage @packageArgs

#Don't need installer anymore
rm $toolsDir\*_x32.exe -ea 0 -force
