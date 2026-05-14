$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/26349cd2a5c8/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.75f1.exe'
$checksum64     = 'a3357f77c0e48660e045556589530cc6492a855b7f8c556a01d5e1a2552dcdd2'

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
