$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/48b1aa000234/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.2.12f1.exe'
$checksum64     = '3b314ab83344b0fea1f5813f5d2bf7d504de30e985de0f14434e89fc47192df5'

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
