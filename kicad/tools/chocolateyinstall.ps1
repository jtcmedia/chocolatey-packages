$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=nchc&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.10-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=nchc&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.10-x86_64.exe'
$checksum32 = '6943871ac09590378cbe7350e61fca856ffdfcc9fb92c65f1b5d54a762833d70'
$checksum64 = '889d7fed97678dde29a0a8746e542e20ca17d9cad759c488d2cf017e06af81e0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64     
  softwareName  = 'KiCad*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

if(Get-Process -Name "kicad" -ea 0) {
  Write-Error "$packageName is running. Please close before upgrading."
}

Install-ChocolateyPackage @packageArgs
