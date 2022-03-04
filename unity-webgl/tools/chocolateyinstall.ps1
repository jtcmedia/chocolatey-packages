$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/bcb93e5482d2/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.2.14f1.exe'
$checksum64     = '33df56fa4b64174860ab4e4692a8a686131ad5438422c97dda2ba5925b6acc7e'

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
