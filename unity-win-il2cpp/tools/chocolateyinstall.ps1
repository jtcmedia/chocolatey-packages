$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95c298372b1e/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.19f1.exe'
$checksum64     = 'eb75c9d0f91d47ab48be2bb26a0df898a5f40ddfcf2ec12a22cce2dd9e1f10f4'

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
