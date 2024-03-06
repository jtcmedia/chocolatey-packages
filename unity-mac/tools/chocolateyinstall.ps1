$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/19eeb3b320af/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.12f1.exe'
$checksum64     = 'fb3ac592b7cf15f1eed529c7f8cdadf28052413b43b79655145217b8ff88b8a2'

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
