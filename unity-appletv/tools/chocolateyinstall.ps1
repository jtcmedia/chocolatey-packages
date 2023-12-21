$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d2c21f0ef2f1/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.16f1.exe'
$checksum64     = 'eabd2464459f923a9e3be428becd87c6f562aef5f3d9ddf18f0991f31e27b151'

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
