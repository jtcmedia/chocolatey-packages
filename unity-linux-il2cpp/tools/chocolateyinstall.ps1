$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e5d502d80fbb/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.2f1.exe'
$checksum64     = 'de41e5919fadd207e541fe2901f3d5d6813c9e47e21d1c2fcfa024c0d07809bf'

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
