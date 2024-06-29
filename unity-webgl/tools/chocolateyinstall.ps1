$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa7102f01711/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.8f1.exe'
$checksum64     = '7d8d1d06e19e7970a01b2d66e299cc7bb45e2e8c6c1e3b59d6ae0b49cf800aa1'

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
