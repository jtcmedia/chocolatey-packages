$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d4d99f31acba/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.1.0f2.exe'
$checksum64     = 'a045927a5f092116037246c7742e5efa902d29020dd9eabb6cb6e98b90bd2b63'

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
