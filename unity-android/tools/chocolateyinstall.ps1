$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bbf64de26e34/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.2.18f1.exe'
$checksum64     = '7a8eac47b90194e8345fff0934f4ce6b2b88cbb7571e73b1f59020c0c17e61e4'

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
