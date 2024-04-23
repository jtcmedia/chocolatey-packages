$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95c298372b1e/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.19f1.exe'
$checksum64     = 'fc1d2ba313c1e611b02b27208b6a32e148609e06e42de68b4623500e73fcd6b6'

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
