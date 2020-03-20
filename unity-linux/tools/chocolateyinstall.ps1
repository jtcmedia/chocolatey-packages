$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5c3fb0a11183/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2019.3.6f1.exe'
$checksum64     = '6af062f1d890af8683704e3826fbcdf61cfd0cb86c4436c60f2bcda10149dfd9'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
