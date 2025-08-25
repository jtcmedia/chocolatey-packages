$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.11.4.exe'
$checksum   = '9c3dc71082c9ba2ddd7de34068815eafa363f560283b94a29063089bf2dc34c7'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.11.4.exe'
$checksum64 = '339f3059ece999cda41f7d8d3c880c9a0dd1033f6102efaf10195ea36ca610d4'

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
