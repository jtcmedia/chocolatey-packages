$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6667702a1e7c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.24f1.exe'
$checksum64     = '4d78a9006993b2817886c851dce119d1d4504d81201de162253d7b9a776b7d2d'

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
