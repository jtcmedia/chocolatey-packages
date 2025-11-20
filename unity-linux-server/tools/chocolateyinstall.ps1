$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/abdb44fca7f7/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.13f1.exe'
$checksum64     = '034ca4bc815ecc099c00bb177cc6dee2b567d933591be6c4fbd9b58b8ff3872c'

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
