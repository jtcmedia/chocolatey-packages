$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/de66c00feac7/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.0b2.exe'
$checksum64     = '4db3478d7cdd2e2b7ce626d22090dc9692eb530caa0b10454c4ebe75c41715c1'

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
