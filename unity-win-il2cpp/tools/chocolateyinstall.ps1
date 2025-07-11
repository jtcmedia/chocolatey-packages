$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/377f5a9787ef/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.0b9.exe'
$checksum64     = '8d5f33d85627b93b142008c2f5851e3bd7ddf968ef41e7177fd7a1b85433fcb1'

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
