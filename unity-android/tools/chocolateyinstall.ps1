$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/85497d293fa1/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.43f1.exe'
$checksum64     = '7c677a34bde24e97c0ff2f8b1ca3ed8e154648b6ec228cfe2f8f628d994c6ead'

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
