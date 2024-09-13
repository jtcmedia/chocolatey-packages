$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/302b264628f9/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.19f1.exe'
$checksum64     = 'f969e6c98f6567a0b19aca2e602229fc44ac6b6d2e12c7bfb1abbfab32a5bf28'

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
