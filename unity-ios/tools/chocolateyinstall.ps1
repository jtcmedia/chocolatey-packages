$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/88f89d0d8b31/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.77f1.exe'
$checksum64     = '66e1135adfc05e7487f74249b81eb21b7ddd5e5f359beb7c6c37792d36c0c978'

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
