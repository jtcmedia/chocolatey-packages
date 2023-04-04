$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f5de2657605/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.13f1.exe'
$checksum64     = '3e382232d1bfcd35d6f3a2983a0cc045094d2b6b87cf773d5c0f599b77125c5d'

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
