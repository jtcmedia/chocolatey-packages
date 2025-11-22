$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.12.4.exe'
$checksum   = 'c3aef17e12b3ed990b87546795d6f332bb8012ff5880d0d3415e92b857821517'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.12.4.exe'
$checksum64 = '9d15be00ae51082c80cdac8b9060802d76a417c42dbefee0e42dc9fd3a7a7331'

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
