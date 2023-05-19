$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b805b124c6b7/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.48f1.exe'
$checksum64     = '4de30791da9a6f7bea699e09ac390afb16540390ab86b5d24d0dc2d8aabd7ce3'

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
