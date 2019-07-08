$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d5f1b37da199/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.1.9f1.exe'
$checksum64     = 'e9947dac4eecfab5ea183c146c3cdeffa09a9ae22d052b40b94d0ae6154002f3'

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
