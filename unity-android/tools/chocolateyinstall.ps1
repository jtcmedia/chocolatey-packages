$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3e18427e571f/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.1.2f1.exe'
$checksum64     = '875630fc8ecae6995808c97df89d36fbef4b39dc0e2c133e49d573bfb243df55'

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
