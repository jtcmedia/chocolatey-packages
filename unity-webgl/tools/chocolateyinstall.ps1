$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ba98e9386ed/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.3.8f1.exe'
$checksum64     = 'd78331bf64a4a762f0033c1ea25fb67310f698cb0460dcca3e5fe3cf73b57e6e'

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
