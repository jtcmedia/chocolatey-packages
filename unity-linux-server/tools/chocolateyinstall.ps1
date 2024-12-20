$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b2e806cf271c/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.32f1.exe'
$checksum64     = '4526b78d65d4bee354f99cb4525fcae1ef20585011603121eddc7fde7258d42d'

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
