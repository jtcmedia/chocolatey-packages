$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/c591d9a97a0b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.2.6f1.exe'
$checksum64     = '77fdf31d3db5668c56f5b019c7f2351485c5e10f7c1a54f14fc848630351c989'

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
