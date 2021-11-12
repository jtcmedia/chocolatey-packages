$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5e2b1e92c7f8/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.2f1.exe'
$checksum64     = '12c88e25c80b0f4f62ff434529a8d7b960aff1a3b4d0b7fe3cdf91e4977b2dc0'

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
