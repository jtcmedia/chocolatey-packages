$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/377f5a9787ef/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.0b9.exe'
$checksum64     = '3b593e5dd6f80dfd194a901a76d6be363825a98f6053b8998601c903bbc55038'

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
