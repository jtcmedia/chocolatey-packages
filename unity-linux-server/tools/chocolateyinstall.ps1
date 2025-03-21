$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/97272b72f107/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.43f1.exe'
$checksum64     = '77514ec4cdb2f8f2a93c6105abadbe9ace03c911881842d90527932d3c09a3a2'

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
