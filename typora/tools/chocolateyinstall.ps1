$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.7.6.exe'
$checksum   = '7b711841c855f2a583d6036e5844e24c5d895f98dc8c2f2d5e4489ea90080f5d'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.7.6.exe'
$checksum64 = '959cfdb3c45e5141e35c13ed0b0e2ab00aad1275db16b7d07652f1f5b70bd563'

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
