$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.5.8.exe'
$checksum   = '2495c465fcc24f3637418d0ce7b639318703f9bf87491fe8fb48f4ed697eed12'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.5.8.exe'
$checksum64 = '8a294b348d78856964851c0af7599f42d9d1d2c45b336d905addb3f1a0264bf6'

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
