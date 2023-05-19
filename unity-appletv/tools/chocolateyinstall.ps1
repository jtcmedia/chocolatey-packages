$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b805b124c6b7/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.3.48f1.exe'
$checksum64     = 'ceb6c896f9266b2f92e1d60bf7a47cf8ab90a7c5b9ac3fbbdc482536965da663'

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
