$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/7ceaae5f7503/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.3.3f1.exe'
$checksum64     = '48e6a46fb37e79257d4be34746a996d29e6aae574508b3db341c0d2702460298'

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
