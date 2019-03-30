$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5063218e4ab8/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.3.11f1.exe'
$checksum64     = '2a7555309ee5ac91049f8a24ba4702a17253dbc065e27f8d26d8ea9ad090c570'

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
