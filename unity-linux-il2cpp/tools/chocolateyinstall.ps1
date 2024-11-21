$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/df4e529d20d3/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.53f1.exe'
$checksum64     = '3698037279ebf00ac15ea67c5b8619a1e1816e7452b7848a5b9dacafcbb2c6b4'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
