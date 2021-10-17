$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typora.io/windows/typora-update-ia32-1016.exe'
$checksum   = 'da4ca6f17f2306106e75797a55ebca6232896be256e6a48429f08af7d6ab976a'
$url64      = 'https://typora.io/windows/typora-update-x64-1016.exe'
$checksum64 = '856d324957535488569e1096b817fe604f54b3d674c63968a15f3bcded54b500'

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
