$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/ceef2d848e70/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.3.11f1.exe'
$checksum64     = 'ea98af13faa026e0ed5a2f061454b44bad1b2c4a75e60a89db528342b0896c01'

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
