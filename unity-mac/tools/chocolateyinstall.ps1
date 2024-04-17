$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cb755715f58/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.18f1.exe'
$checksum64     = 'c3d711e8437a7ff7305779aa6c7749099c2e4a74e9c5f46d73b835ce23395756'

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
