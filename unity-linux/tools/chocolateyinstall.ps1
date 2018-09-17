$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/ae1180820377/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.8f1.exe'
$checksum64     = '8ad4e593f8ed2c7d24c9d0e9f7abf9df36a53b196bad0457874fa7d0073fc4e9'

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
