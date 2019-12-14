$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b9898e2d04a4/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.2.16f1.exe'
$checksum64     = '4d654b2d121cacc3aa0ae9986a68636fb27ac3bdb014783e43e6cb5969de1f39'

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
