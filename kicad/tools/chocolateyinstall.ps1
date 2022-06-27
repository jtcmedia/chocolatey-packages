$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=rwthaachen&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.6_1-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=nchc&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.6_1-x86_64.exe'
$checksum32 = 'e2db52d6ef4100bf30da471ab4f4e85767d8fb130abc994137cfa472874e80b7'
$checksum64 = '00764eecb9a7ebde5c5635b16cd5d009934102d5bea68a64afb18f7f41aef4e4'

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
