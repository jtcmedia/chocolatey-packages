$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fa717bb873ec/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.1.4f1.exe'
$checksum64     = 'baa06a1492de75ca8f0ce111c9f0e5409568e1a0f2ca5600f15a645bcb0e792f'

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
