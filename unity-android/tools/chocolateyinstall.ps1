$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/51d2f824827f/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.14f1.exe'
$checksum64     = '95751b4e6c37826a2d1e2bf7163d5a7412a78404e2d0671d395a0a9edba17699'

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
