$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fc0fe30d6d91/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.3.8f1.exe'
$checksum64     = 'ce6d0742136bbbc1112c03d491b9a63e7abd118430bd56454fcc9eab360ffde8'

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
