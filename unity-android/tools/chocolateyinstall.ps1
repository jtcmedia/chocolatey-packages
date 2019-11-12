$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b1a7e1fb4fa5/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.2.12f1.exe'
$checksum64     = '770403137d3a1580b652f2ac8a3cbf0a8d3c9edd58ed56a115f6518dd155babc'

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
