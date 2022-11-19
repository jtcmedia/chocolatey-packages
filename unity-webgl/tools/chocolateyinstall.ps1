$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eee1884e7226/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.3.14f1.exe'
$checksum64     = 'd886550efdbcd039453538a168b5a4978ece930e83c2a6a52494a8f78b2b3f31'

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
