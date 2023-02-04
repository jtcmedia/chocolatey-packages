$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3129e69bc0c7/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.18f1.exe'
$checksum64     = 'e7c210cb14eedca16f0e34559384778366490b548b1c80a269a15a6cfd6d13e5'

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
