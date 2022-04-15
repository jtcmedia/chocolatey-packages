$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.2.5.exe'
$checksum   = 'a6a12dd6af786030e89e3ccce1e440a2dbdf9a00e00fd887779ba8bbfad31566'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.2.5.exe'
$checksum64 = '6624075e371944211ccb5258a21e29a73218cc0b4b788c8402393b51237f80a0'

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
