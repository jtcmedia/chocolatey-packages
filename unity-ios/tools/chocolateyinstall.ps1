$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d00248457e15/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.11f1.exe'
$checksum64     = 'dd122d1ceff52829f20f9a6d7a7273e973b5c30ed6dcbb89467a7517cd2e5e5c'

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
