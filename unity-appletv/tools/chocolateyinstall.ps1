$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8c45277fb9c5/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.6.9f1.exe'
$checksum64     = '56204c32907501edacd60b065dcfd784c990c8d8a9d4b23b45a05ecd1b702a00'

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
