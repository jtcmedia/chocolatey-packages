$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.8.6.exe'
$checksum   = 'f55fca6f71e51c23ea602842999fdae9e9d90631e3218af9d976784319d721dd'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.8.6.exe'
$checksum64 = '66b439b76771eb02d11f186a1994842959f1db2921ed465efd9b83a301859912'

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
