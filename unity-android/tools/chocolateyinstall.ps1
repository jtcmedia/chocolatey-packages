$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b805b124c6b7/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.48f1.exe'
$checksum64     = '393b5e45ac3a4f7ca16947f441e380a94525feeed6b456f11fbed666abb9fc48'

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
