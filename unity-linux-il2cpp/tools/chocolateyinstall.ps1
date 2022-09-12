$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7321c9670bc2/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.16f1.exe'
$checksum64     = '12fd24c2dd023e3c31971f2d2fdc645d55eb5aa6993ac2c6fe32f606a46c05b9'

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
