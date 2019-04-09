$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8afd630d1f5b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.3.12f1.exe'
$checksum64     = '763cb0d37dac338de090e36f4952ab330c573ca5d5a06a298027c6e8b4cb4c74'

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
