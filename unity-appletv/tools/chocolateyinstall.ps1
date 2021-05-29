$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7a790e367ab3/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.1.9f1.exe'
$checksum64     = '479172a1973e4e5a7e64d67dc82caf7b0b58692eaeff33c3334b5fc98c0f94ed'

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
