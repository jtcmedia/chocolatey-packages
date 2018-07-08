$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4cb482063d12/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.1.7f1.exe'
$checksum64     = '03142d0ad96854b240a32cfd664b2b87cecc250d6b4ae0767f07cf0ad918d5e8'

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
