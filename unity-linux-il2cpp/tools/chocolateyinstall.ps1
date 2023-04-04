$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f5de2657605/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.13f1.exe'
$checksum64     = '1ad7981c974f681dfbcdd9b0e0b4c4b569747aeb767edf4e48aae8f07b62d142'

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
