$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.0/kicad-5.1.0_1-i686.exe'
$url64      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.0/kicad-5.1.0_1-x86_64.exe'
$checksum32 = 'b954c71e34fad4adad97563a341c05ffd1a0c47f3349854503c779c34df0f0b0'
$checksum64 = '39b24f6e0492167ab688f45efd1bded07687a69b82e06c356ffa23cbd05e5d76'

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
