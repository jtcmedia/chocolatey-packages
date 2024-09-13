$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/302b264628f9/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.19f1.exe'
$checksum64     = 'd2b4673eab40d0aad17642fe72f4def6920f18681f20db9e7d1392267cc47439'

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
