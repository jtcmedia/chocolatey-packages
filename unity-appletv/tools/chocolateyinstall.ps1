$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d5f1b37da199/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.1.9f1.exe'
$checksum64     = 'b701410d89904e3a34fdccf1f32017272ccb32682e7ec83ac412642b7869311f'

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
