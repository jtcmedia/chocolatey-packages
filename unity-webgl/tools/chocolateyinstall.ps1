$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a9f86dcd79df/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.3.0f3.exe'
$checksum64     = 'f4a563eeb38c94377d51a6433e230b861b1b1b77c8487d1cf8776c9ebe52d936'

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
