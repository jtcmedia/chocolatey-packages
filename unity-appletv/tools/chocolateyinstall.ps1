$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/95e1b8cf7a6b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.17f1.exe'
$checksum64     = 'b476a8e12d4b59f2acfccdaf8af61cb80a13217641941cc611ac6614d4309f9e'

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
