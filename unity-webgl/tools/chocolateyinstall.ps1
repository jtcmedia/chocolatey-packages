$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/12f8b0834f07/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.3.32f1.exe'
$checksum64     = '3c94a3d0121f57cab8d4ca52b5e30f1158dd7db2f287e3de74c02b299af3bdf1'

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
