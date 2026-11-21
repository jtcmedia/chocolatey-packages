$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.14.17.exe'
$checksum   = '0ef0c6901159a61e276429668454426f59e5cde4c1bef2fce422951d9238942a'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.14.17.exe'
$checksum64 = '44d0a858b0f9ca2656ee0f75061657636b44a58841941cbb6d37a01e7f956d72'

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
