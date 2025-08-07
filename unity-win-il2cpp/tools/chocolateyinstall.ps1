$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/faa32412f6c9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.1.15f1.exe'
$checksum64     = 'df346e7d545fe715ca59f7cce160717a9d61827f524b3f5a7e20b22c91ed9fcd'

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
