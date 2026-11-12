$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c45277fb9c5/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.9f1.exe'
$checksum64     = 'b0ec6134cfc6e32bc41eb7e9d27926c8477874a0a9fb63819f1d44daf21a6168'

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
