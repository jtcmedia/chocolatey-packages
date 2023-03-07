$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cc571a6ec95/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.9f1.exe'
$checksum64     = 'f8b56a92297f23f235d3a147ab04815b947c7c93f414d7c9294d3ad5d16f40ea'

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
