$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f3f87a02ba54/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.4.0b8.exe'
$checksum64     = '940bb58ad9b595a97cfd5056618435a3cc5fdaf02d2b4b37d6533005beac026e'

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
