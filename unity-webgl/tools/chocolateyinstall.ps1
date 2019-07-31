$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/20c1667945cf/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.0f1.exe'
$checksum64     = 'e5df39f7e5ee1c2bddf5c25f5f7d799a6cc9a9fe19ecaff2c24f86174bac5f1d'

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
