$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/9231f953d9d3/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.4.1f1.exe'
$checksum64     = '9e9696edc61e0b6981af6cbe8e7fa4ee4040e49b4405ac36e8d600508b29ce4f'

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
