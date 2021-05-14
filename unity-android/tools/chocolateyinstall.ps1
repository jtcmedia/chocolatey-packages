$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d91830b65d9b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.7f1.exe'
$checksum64     = '718f9895cd8a2f14232fda84298e6775ba7381a17af115e65620e0112dd11295'

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
