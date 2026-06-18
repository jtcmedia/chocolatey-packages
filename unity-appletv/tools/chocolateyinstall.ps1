$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3ca267ce8005/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.4.12f1.exe'
$checksum64     = '212e6b1c520ae220956f6ad30bb42bf49cbcbe323c93a3623eabd648192e034e'

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
