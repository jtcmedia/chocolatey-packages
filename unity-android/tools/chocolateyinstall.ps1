$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1431a7d2ced7/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.2.3f1.exe'
$checksum64     = 'b01748d09b0744713ff56dd0d6f0211ee5dd8edbdb1f9dd1fa305023ac3d0c87'

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
