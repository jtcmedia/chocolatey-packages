$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f336aca0cab5/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.28f1.exe'
$checksum64     = 'b42b68d9b604f0ab790be8d988b593a91159c71047904a5e82a0dddaa8f8ee5e'

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
