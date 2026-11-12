$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8c45277fb9c5/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.9f1.exe'
$checksum64     = 'c52e257512abb4b1d6fcd916df5de61910b0a42bfe961941e05a13e8bbdf4f0a'

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
