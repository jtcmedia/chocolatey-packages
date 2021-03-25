$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/61a549675243/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.0f1.exe'
$checksum64     = 'a8aca49e2058678584f43b99372e7298c6cde9ddfd2fa7c6d4f14bb54b283bfc'

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
