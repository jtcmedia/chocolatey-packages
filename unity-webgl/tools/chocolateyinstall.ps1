$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/32358a8527b4/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.2.3f1.exe'
$checksum64     = '1a8d0ee956f3b6b2e64739e916842301cf3882bd9b7804826b385515ef1038db'

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
