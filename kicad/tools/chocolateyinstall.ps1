$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/KiCad/kicad-source-mirror/releases/download/7.0.11/kicad-7.0.11-x86_64.exe'
$checksum64 = '540eea56609190a0404d92d7d09c6dc41667176718581a2b85d120040da518ce'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64     
  softwareName  = 'KiCad*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S /allusers'
  validExitCodes= @(0)
}

if(Get-Process -Name "kicad" -ea 0) {
  Write-Error "$packageName is running. Please close before upgrading."
}

Install-ChocolateyPackage @packageArgs
