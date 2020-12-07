$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f483ad6465d6/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.1.16f1.exe'
$checksum64     = 'dcd8d584ff4042ac4f82efe9e8fee6d87f60167fcf1173c234c973d058fb915a'

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
