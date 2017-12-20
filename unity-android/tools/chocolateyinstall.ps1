$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a9f86dcd79df/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.3.0f3.exe'
$checksum64     = '11153995776821236febf1c5224b6a6c8a3a872009b4a3adaba6ae385c9c412a'

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
