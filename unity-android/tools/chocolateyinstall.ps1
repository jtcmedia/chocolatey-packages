$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c20c6d589440/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.2.1f1.exe'
$checksum64     = 'f6c4bcb0df7e95b8c0cfe4aea42aa24a6cc7b8e2455a6517009f627502bcab9e'

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
