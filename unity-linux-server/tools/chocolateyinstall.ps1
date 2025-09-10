$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c7638eb16d91/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.3f1.exe'
$checksum64     = '80e42ab47eae1072e00a8ca99142cfcab5a56c2227241d7d9b3125c90e8a989d'

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
