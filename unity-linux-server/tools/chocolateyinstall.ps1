$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f99f05b3e950/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.62f1.exe'
$checksum64     = '7cf05fe8a1876e9a976d08a6417b2fb3d60462597772a0717639ad110ca1bcac'

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
