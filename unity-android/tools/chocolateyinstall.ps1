$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f076387c01d/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.26f1.exe'
$checksum64     = '05f793a7713a37767f1b199f4048646bc1d5e809e7f8b4de7a23c8be54864ece'

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
