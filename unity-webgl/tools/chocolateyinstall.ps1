$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/996aee41dc57/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.2.8f1.exe'
$checksum64     = '4252f14c33797f086333bbff4f5e1b5ad8a906107bcdb693f12729d85a26c11d'

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
