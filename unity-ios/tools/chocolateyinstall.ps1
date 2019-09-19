$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fe82a0e88406/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.6f1.exe'
$checksum64     = '05c2b71c8b816b3184b1b8e2168c4f298a8ac98f4707d4b5e30f77f192eba8ea'

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
