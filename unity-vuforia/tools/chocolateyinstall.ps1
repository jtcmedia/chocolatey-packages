$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d5f1b37da199/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2019.1.9f1.exe'
$checksum64     = '7ec81d7efaa7bb25a205683fe7b89d7b0109b385899d9d80ac31eddc9eb0436e'

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
