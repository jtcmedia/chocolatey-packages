$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5c3a1087d8e4/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.11f1.exe'
$checksum64     = '6f7d398bad8dd7ecd2f9330e2d3bff07d1a6c4008ff6acf6c591c0b0e9ddf821'

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
