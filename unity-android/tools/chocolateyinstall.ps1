$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fc0fe30d6d91/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.3.8f1.exe'
$checksum64     = '9a9a5953b1c202d403831aeb8929da1d03c8b80b95ec756bd4b3ab191ff4fb38'

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
