$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e89d5df0e333/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.12f1.exe'
$checksum64     = '7856d0758082b531bd6465c7ad46651477bed3ec6cac66b5064f9908531ad03c'

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
