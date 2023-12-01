$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ee5a2aa03ab2/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.33f1.exe'
$checksum64     = '08f35db8eee64c6a8bc535156221d9ccf89e7c802231b981221148c83c5c23e9'

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
