$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.5/kicad-5.1.5_2-i686.exe'
$url64      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.5/kicad-5.1.5_2-x86_64.exe'
$checksum32 = '58fe6d768a851c8e84a0ebca8d84a10863cc5cd6b2bf7efe3468febb88ceab63'
$checksum64 = 'c783fa9e944d0db4bbd9aad43175741f6ec5548f552ac4b52384583039f0f0fa'

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
