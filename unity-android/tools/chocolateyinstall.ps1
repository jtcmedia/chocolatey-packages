$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ebd28dd9664/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.2.7f1.exe'
$checksum64     = '988a7a45c1b95f5c98ca430e2f8c18d2b6fe9959825209d54105a0e6746da6b5'

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
