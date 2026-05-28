$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6f7f9e1c9e8a/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.76f1.exe'
$checksum64     = 'fe0deedba25699bf6d9461ab7c3da9b59600a95c33aa4d8f1cd4eee306b103d6'

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
