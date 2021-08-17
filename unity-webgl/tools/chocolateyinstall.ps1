$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/03b40fe07a36/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.1.17f1.exe'
$checksum64     = '480183cb1f9d100809a1489c4c9d9567955ee4fcb775f48230b82abbc2039e67'

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
