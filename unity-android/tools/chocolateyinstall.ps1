$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0ca0f5646614/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.1.5f1.exe'
$checksum64     = '98f0f7d27d3ef445808e6b0ee2542021d3747ab8defdeaf69f3de48a90a7f2c0'

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
