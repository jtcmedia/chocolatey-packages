$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a220877bc173/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.3.6f1.exe'
$checksum64     = '128d3c83f78cdbe77db44c2b7d5fffa3463ced8873f17e4e3f00d8b5862f9a2f'

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
