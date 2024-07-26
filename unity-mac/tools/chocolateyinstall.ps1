$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7defd84cdab8/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.12f1.exe'
$checksum64     = '232ccff9ae46540f8e27f77e8bec86d89e0bfddce8f77fddfea1515d16f29b8a'

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
