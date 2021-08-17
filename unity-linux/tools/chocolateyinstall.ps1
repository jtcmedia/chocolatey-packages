$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/03b40fe07a36/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.1.17f1.exe'
$checksum64     = '68bcd1c1fc76877e2ef35569a1de301db2acc61772fa7100578b8f90042b185c'

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
