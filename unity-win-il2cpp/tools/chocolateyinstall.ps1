$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/abdb44fca7f7/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.13f1.exe'
$checksum64     = '2d5c6c99cc20b446ee5075432c4e78528a47ae326eeaedc854bdf95fc713cfa8'

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
