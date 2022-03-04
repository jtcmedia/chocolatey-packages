$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/bcb93e5482d2/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.2.14f1.exe'
$checksum64     = 'ac9e4ea153872735ceb98dfa50f1030237f0a5687ee450a6d820790b186bf797'

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
