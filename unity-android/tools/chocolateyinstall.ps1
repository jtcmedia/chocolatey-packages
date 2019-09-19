$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fe82a0e88406/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.2.6f1.exe'
$checksum64     = 'df654cf073797dc231c8bb36627525bb59fc9613b3af0fb4aa8c3f086c1587f4'

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
