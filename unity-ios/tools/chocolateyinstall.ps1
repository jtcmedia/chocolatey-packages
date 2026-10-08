$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3ff58d469c8a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.5f1.exe'
$checksum64     = '3abd04b98a8254ae26ee0201aad6a41167ebf58fc919e4d44ff6ddf3b1efb412'

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
