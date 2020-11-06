$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://kicad-downloads.s3.cern.ch/windows/stable/kicad-5.1.8_1-i686.exe'
$url64      = 'https://kicad-downloads.s3.cern.ch/windows/stable/kicad-5.1.8_1-x86_64.exe'
$checksum32 = '441555d1584ceca4a80c3152f29f10a20864f54844b2a030fbcf586b2f260388'
$checksum64 = 'd34f3cc3139a902b30467a3027f9a4b19cc87ab475acfd24ec1c79da7876f8f7'

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
