$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/55b56f0a86e3/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.1.12f1.exe'
$checksum64     = '496ae2bfe9d67031140a53b0828698c3a02ad31ccbaa4326b0fe716bb1f5a018'

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
