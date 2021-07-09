$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/51d2f824827f/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.14f1.exe'
$checksum64     = '7466c6cc5f2f6e25d73b21e978f204cdbde355d5e96d943f9cd4546320658d6e'

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
