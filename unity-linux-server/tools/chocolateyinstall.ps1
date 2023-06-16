$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a008fa768e6c/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.0f1.exe'
$checksum64     = '425a600c58ea5316d470f743db0d3c01727099c60d7a5234f540df0d00421993'

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
