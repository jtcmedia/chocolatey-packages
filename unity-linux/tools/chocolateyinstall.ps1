$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a9968d9f99c/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.1f1.exe'
$checksum64     = '80e52d6988f4bbc8a49c51e1ef78ac4c9a615b0a819bbb598d4342bfcebc29df'

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
