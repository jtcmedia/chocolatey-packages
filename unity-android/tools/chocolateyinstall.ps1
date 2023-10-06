$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e5ad54273a6f/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.1.16f1.exe'
$checksum64     = '46881d5ca4fca794286dd0e380e74c9796118e2a019a98f08619c0b2b6e299ab'

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
