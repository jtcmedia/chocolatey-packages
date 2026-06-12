$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b0a1d6caadd2/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.4.11f1.exe'
$checksum64     = '5445efb722adc2f42ab8253003a140e46c9d19f3579609ff7a26590958b781ed'

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
