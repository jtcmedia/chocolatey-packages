$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/c591d9a97a0b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.2.6f1.exe'
$checksum64     = 'bff7330a72f11dd89e1bb1655f252ee226ee46518a657f0bf37cfec3f68647eb'

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
