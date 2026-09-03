$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5c3a1087d8e4/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.5.11f1.exe'
$checksum64     = 'ddeccd0c4ea2e7f432361174a9985e9fe1107dabce823f17d3f4e453d1f9dbd5'

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
