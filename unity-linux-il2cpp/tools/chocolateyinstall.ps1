$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0da89fac8e79/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.45f1.exe'
$checksum64     = '3cbea579547efd0d90162076cdc73523d3414e8ea60cc696351055d4dc5faca2'

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
