$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5fa502fca597/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.16f1.exe'
$checksum64     = '7b059ce9fd127447acacdcee28c65c60625d2cf39209a0614e136ba4abef3f4a'

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
