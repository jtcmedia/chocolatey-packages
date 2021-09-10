$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/be552157821d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.20f1.exe'
$checksum64     = 'b2e29b4ed545b71fbc9180a807b7da712e4b0c6adf5f269032e63c5dda0e7d59'

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
