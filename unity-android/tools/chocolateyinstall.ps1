$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/929ab4d01772/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.2.19f1.exe'
$checksum64     = '0d4e09b177f0b949f18379c8efd0d2bb3fe97d92c3a001d551fdeb3cc3f05142'

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
