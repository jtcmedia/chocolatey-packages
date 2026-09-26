$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/45d8eee7de74/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.3f1.exe'
$checksum64     = '8d51a417e04ee65da2625cb25aa68fc525026862e9230e8d573320262266a83d'

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
