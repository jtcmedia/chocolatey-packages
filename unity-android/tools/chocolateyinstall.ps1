$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e6c045e14e4e/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.4.1f1.exe'
$checksum64     = 'ee96ceb6e45a40406bc70643d7bde285b59336c05e8d19ca2fc2388badac8cdf'

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
