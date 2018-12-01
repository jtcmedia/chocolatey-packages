$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4550892b6062/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.2.18f1.exe'
$checksum64     = '99e4310d7355117435a99b4d31ede984f0ee1be6e25b70a7f7b4fcc2325a3d71'

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
