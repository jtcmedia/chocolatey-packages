$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ef4f5b5e2d4/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.47f1.exe'
$checksum64     = '1503be2a368eb1dfd4e4deafeec11b3f11572a2d344a1c9d98913f76b045895c'

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
