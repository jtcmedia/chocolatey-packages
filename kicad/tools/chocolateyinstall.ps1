$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://kicad-downloads.s3.cern.ch/windows/stable/kicad-5.1.7_1-i686.exe'
$url64      = 'https://kicad-downloads.s3.cern.ch/windows/stable/kicad-5.1.7_1-x86_64.exe'
$checksum32 = '0e898c1da50edf6c01f9e303a84b604879a7976ca331b416a4674c0fdb326c41'
$checksum64 = '6fa571c7ada9f5c7d5aef2c7c962ca4a51ac98ffb6077f8f9026d951f80281bb'

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
