$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7defd84cdab8/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.12f1.exe'
$checksum64     = 'bf234f03023a988a09fb120c2a2a46f5dc67e6668997062819e348518e5d23b0'

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
