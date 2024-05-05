$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7a2fa5d8d101/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.38f1.exe'
$checksum64     = '67fa0908a97a40b7ea65fb96656e8c47158e8dd8b46ad623c37083234624ca60'

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
