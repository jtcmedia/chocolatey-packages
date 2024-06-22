$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.9.3.exe'
$checksum   = 'e9dc4c288544fcb0769bdefb98e9ed684c0b84607237140bbc7e660601e33a36'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.9.3.exe'
$checksum64 = 'cf5b49a47a8feac0920d6ccaceec21eae979e51554a592319a658dc5d5c24012'

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
