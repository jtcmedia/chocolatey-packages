$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4504a57e80f0/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.0b3.exe'
$checksum64     = 'b44d3c0e36fc5825d43fa286b89f86ff69ab00d29b900d3828ad5fb08c03af4e'

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
