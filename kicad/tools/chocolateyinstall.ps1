$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=bfsu&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-5.1.10_1-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=xtom_hk&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-5.1.10_1-x86_64.exe'
$checksum32 = '705c4b72898a979209dc63ee6c469f45abef44ca813c0beccd86a75d47ef5183'
$checksum64 = 'ca734c9df2ac9711d85d841debc4e284eb1b529de5b2217096cfd0a10d8843c0'

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
