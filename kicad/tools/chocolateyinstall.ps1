$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=gigenet&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.0-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=gigenet&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.0-x86_64.exe'
$checksum32 = '11dcaacf49ae968d15f604c28bae8a194b3b719779f6d3815b0c4eb5c7b89032'
$checksum64 = 'b0c51346a324db51dcbb10961c44908d3f40492e04c361db98242525c81131c3'

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
