$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b0a1d6caadd2/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.4.11f1.exe'
$checksum64     = 'c8535641cb4f68a63163a68abaaa9b6383aaa6afbd19495a32e9ae6af10da198'

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
