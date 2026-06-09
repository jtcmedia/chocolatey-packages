$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.13.7.exe'
$checksum   = '02c7c298fa7debcc948c7bb21d784a3d2b21792f3ea45cadb51d088ace85f407'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.13.7.exe'
$checksum64 = '04dc5d0ec1ddae9ab1d405be578c2d486e48cca9295029f79d532db80032ab40'

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
