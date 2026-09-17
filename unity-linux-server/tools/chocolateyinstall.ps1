$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7efac9f6c10e/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.1f1.exe'
$checksum64     = 'fabded006ca00a44049be0822a5746d649ab145fd25f410f76d56f8d9c8a4f86'

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
