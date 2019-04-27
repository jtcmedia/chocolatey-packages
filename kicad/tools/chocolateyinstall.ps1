$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.2/kicad-5.1.2_1-i686.exe'
$url64      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.2/kicad-5.1.2_1-x86_64.exe'
$checksum32 = '6c9a17ed861fc66180c9430053d23312f1689d70d5a9be3502571d73e5153825'
$checksum64 = 'fc2dd255ce02be7f8c709c453acdd47d2dab52f780a211f6784b389a3312f088'

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
