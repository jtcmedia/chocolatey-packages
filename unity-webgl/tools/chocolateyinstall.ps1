$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8ff31bc5bf5b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.2.3f1.exe'
$checksum64     = '4a3a87021bbdde39470d33c1eca996b2695605ec05d2465e948808cf9b0080e4'

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
