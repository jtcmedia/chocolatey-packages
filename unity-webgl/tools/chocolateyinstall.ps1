$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ca267ce8005/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.4.12f1.exe'
$checksum64     = '0b3f0fbc06de5b1b522df76012befa6da440e464f2b38e976927448dc954c307'

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
