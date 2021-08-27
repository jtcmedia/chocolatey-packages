$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/25bdc3efbc2d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.18f1.exe'
$checksum64     = '6355cbcbfa47ad76ea2438d1b77390d382c951e2c6e4a9b4b416a940810f7f50'

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
