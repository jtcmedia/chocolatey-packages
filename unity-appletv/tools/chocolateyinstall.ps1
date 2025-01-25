$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9a3bc604008a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.35f1.exe'
$checksum64     = 'cd7cbb6eabd44712cb9bfbdcbc52c8377b68346f84ed49b01fc8e8dd60479349'

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
