$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c7b5465681fb/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.0f1.exe'
$checksum64     = '1976e2c79e4c6d3dfe0690fae0c0d5f7878fcfea9a52fcffb6ad7ee5aa91fa71'

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
