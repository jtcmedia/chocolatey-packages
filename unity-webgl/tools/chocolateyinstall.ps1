$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/67bef3276ff1/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.1.16f1.exe'
$checksum64     = '5a9d7a5fa73167a3bcfd71ff7a7a2007bfd9d26d928187d5a17e50a2c3772993'

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
