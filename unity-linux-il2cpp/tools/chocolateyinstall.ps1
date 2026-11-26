$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/34837772f4f8/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.11f1.exe'
$checksum64     = 'bc71d2bcb88a3ac52d2faf05154a6ecf5e3d67a8742da71990e73c6688beb62b'

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
