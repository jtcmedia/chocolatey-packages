$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6a96561936c0/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.15f1.exe'
$checksum64     = '5946a2808da4a14a3ab8fd10b93bde3bf1a80524a0e17d1319d0dd885c1acc0b'

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
