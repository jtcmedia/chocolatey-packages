$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/12f8b0834f07/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.32f1.exe'
$checksum64     = 'd9ad165e20543e442d59bc6a5a5b4031eb51d8f0d6300df680710b3ad4451ebc'

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
