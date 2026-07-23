$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b5238eaafb35/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.6.0b5.exe'
$checksum64     = 'df67a8e897536a40a17c3ed047e416a31c6913f1da4010c3d2feb3ebd933ef9d'

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
