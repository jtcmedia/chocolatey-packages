$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f7f8ed4d1e24/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.0f1.exe'
$checksum64     = 'c9a3060835a4ea9b7029deaee4cb3bfa22ca0e7464621d47f4e121cdabc78dad'

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
