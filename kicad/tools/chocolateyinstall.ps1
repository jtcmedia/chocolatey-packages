$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.4/kicad-5.1.4_1-i686.exe'
$url64      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.4/kicad-5.1.4_1-x86_64.exe'
$checksum32 = '3515be3af631c5f849b4918365041b4049d294e423c33f7b6b3fc8b98a988689'
$checksum64 = '3653ad7a61e3a936c53167701dc3dbb0aa2771b1e620b3541bed30775a08a615'

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
