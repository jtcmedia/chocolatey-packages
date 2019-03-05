$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9e14d22a41bb/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.3.7f1.exe'
$checksum64     = '699cebf8e90d2d80aa817ce972aa4c81a07348d5ad547cb4fe98b1d00cf90ac6'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
