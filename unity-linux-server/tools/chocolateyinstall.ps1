$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4dae1bb8668d/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.49f1.exe'
$checksum64     = '483bdf7a511cc9e27e0b30ee7eb376336e987c0e694570d3d5456ca5cdfcacad'

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
