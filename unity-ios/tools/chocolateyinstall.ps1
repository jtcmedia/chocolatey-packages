$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3ca267ce8005/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.4.12f1.exe'
$checksum64     = '2eef85b174e34e41e5c54eebec4c3a8452f2fd227f0fb55c1e2b4e0ca4bb95c9'

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
