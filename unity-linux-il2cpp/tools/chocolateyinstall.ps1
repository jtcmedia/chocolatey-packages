$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ff7e140968b4/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.14f1.exe'
$checksum64     = 'cf926998dc866a5beaa868d352c8a92a444357774afc234557ac4c8c12c896ab'

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
