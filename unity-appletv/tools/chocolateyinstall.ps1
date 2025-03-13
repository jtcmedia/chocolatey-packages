$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5f63fdee6d95/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.60f1.exe'
$checksum64     = 'a1c2e7d0d00cc289b8a6cdbda0f03410c01f4b657f6581d53f672cef1d5946ac'

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
