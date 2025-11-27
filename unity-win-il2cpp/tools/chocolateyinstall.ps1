$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/589824c1fc31/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.14f1.exe'
$checksum64     = 'f6ef321337dd5365a814469decbe7afe3b402af16a5daf69281d30db9843d630'

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
