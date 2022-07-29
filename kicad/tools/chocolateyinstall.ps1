$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=gigenet&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.7-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=rwthaachen&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.7-x86_64.exe'
$checksum32 = 'd1c9eae07538e2801f71c82bdd135d799cd111a389320cac68cf64f8c2650e10'
$checksum64 = '3b6b76200784d2361c0b3ef5dca6b661af6cdd9423dd046288007e009af96663'

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
