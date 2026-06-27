$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bec83302551e/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.0b1.exe'
$checksum64     = 'd767beafc2cf1a94154d44ad8a9f1047a1ac1391d9a054e5688f2a835f6d0d1f'

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
