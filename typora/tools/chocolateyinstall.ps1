$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typora.io/windows/typora-update-ia32-0831.exe'
$checksum   = 'c88805f9c08f81dfb80377748e6c78da695a0f6232004af1afea8c15f518fa54'
$url64      = 'https://typora.io/windows/typora-update-x64-0831.exe'
$checksum64 = '079a8e3b5570fd1ccfc3c5a83b206f8dd6ef2b939f94b8e2bbaba3d0d816412e'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'Typora*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
