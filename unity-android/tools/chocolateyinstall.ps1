$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf5c4788e1d8/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.1.3f1.exe'
$checksum64     = 'a38f08627d240b2b5ceb5a9de84632185a82157e818ca45b9bac92ad587a04e0'

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
