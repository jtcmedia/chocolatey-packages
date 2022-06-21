$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=rwthaachen&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.6-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=rwthaachen&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.6-x86_64.exe'
$checksum32 = '335d4c71d62893c477f051d4230127741d5fb7f08f8ec93896858ef354d9ab5a'
$checksum64 = 'cc7271edd6ce14b2bd44429fa3d9c188b7ed7ab067891f491763ab1073dea0f3'

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
