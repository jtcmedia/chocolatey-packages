$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/42973686a05c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.15f1.exe'
$checksum64     = 'b5b0a2a931cff84ad7d73271c5074244589ff975887b11d55eb702100436e4f8'

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
