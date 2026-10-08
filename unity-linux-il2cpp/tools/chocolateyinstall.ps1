$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ff58d469c8a/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.5f1.exe'
$checksum64     = '621d1a31fb898dca499233a70b645f7b0e76b920c6ce74a4553f8f1b2bad3791'

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
