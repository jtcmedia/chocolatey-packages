$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1120fcb54228/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.52f1.exe'
$checksum64     = 'd35d9c372a62e5dc6f74ea4582db6a01a1acb5cd64ecbb57fc9b2878dc8e2233'

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
