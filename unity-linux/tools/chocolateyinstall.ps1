$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/bcb93e5482d2/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.2.14f1.exe'
$checksum64     = '0ca67c736bee6f2441363e069c2636718e867c969c05b818c0eb5ebb0a1a6577'

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
