$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/20b4642a3455/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2019.4.2f1.exe'
$checksum64     = 'b26e2d34ec5aa11d7d386f66c1b44a44e9e6d8cd925084fb2dc168400d8645f0'

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
