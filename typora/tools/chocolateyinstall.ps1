$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.13.4.exe'
$checksum   = '7d0b5c268fdb884f79196ac4b32b3da4c00e2d075163f91147af711bd9dc6f04'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.13.4.exe'
$checksum64 = '4f38ae1a7a7a56160d62a9779c1c90c5b5ff87e764faec1dc3e1a75c2fb98ea9'

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
