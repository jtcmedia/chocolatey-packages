$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/017862109af0/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.7f1.exe'
$checksum64     = 'd8cd565e2f640090a1e9edf5a3a10d0b336099cb0b40a8cd13e084144d9966fc'

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
