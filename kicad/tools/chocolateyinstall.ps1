$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://kicad-downloads.s3.cern.ch/windows/stable/kicad-5.1.9_1-i686.exe'
$url64      = 'https://kicad-downloads.s3.cern.ch/windows/stable/kicad-5.1.9_1-x86_64.exe'
$checksum32 = '825bbfd80a678f56f82d8c8006a2ed31e0d3d162a2fe376fb0d1c03ccbb287e1'
$checksum64 = 'dfe39c309b232388e540d8a3622942218998efb52f5fe3ce44ec054f570692e2'

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
