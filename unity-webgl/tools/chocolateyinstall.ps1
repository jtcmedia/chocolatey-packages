$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/472613c02cf7/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.1.0f3.exe'
$checksum64     = '26cf9a312aac24c4934e75a13e5ac66aa360d81691cdd9cb6476f943ff92b2fd'

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
