$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/90b6766da538/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.2.13f1.exe'
$checksum64     = '7491ea48fbcabcb968907d12a10ea9addb68fda4f94e6557087deab4899b53d0'

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
