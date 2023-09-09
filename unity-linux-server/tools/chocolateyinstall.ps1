$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/38370f5b2257/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.12f1.exe'
$checksum64     = '6ead8030ae5486ac848fa7c3d4f73c3d96adf67d4c767efd61fd111507d52f4c'

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
