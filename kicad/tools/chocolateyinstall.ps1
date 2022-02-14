$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=gigenet&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.2-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=gigenet&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.2-x86_64.exe'
$checksum32 = '38c6d487c28c99b2dc90272be848dc9ae93b7c33b0b29e0a7c8ee8e0ecef052f'
$checksum64 = 'b56446e7004f48412ee17b9f6da4dee6c7ec6843124af6b9a7e4e2474608b218'

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
