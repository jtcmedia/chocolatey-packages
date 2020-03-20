$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5c3fb0a11183/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.3.6f1.exe'
$checksum64     = '22fd7cb2157692a2e77707fb1a2e121d8c9f88e3ed5ab16e7fc011574e099fd2'

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
