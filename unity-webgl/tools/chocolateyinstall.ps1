$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/497a0f351392/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.6.0f3.exe'
$checksum       = '165c4321e3b5f0a1e2281ef487f49b185aa0b2ad1f7505faf8a6e18be8add61a'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
