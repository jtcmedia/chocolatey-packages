$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/dc414eb9ed43/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.1.3f1.exe'
$checksum64     = '4c12be1bb4d7029c411e7e87ab27dc1faae25077bdb26c414e00a3fd826697c3'

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
