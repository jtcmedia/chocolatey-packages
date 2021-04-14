$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4bef613afd59/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.3f1.exe'
$checksum64     = '485b0bba488ee4b999aa06851df073eab632fe61e6aab837c5d7b4fb3f83f250'

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
