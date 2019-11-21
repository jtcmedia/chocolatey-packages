$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e20f6c7e5017/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.13f1.exe'
$checksum64     = 'f91b9f448cb44f7fdccfe3676edc16788bca54bef08d7f7a22e035f8e5e137ce'

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
