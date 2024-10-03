$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4dae1bb8668d/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.49f1.exe'
$checksum64     = '0e0df9b0ec4991220944384a9b80d90e5b0c73c1e319ce9be97d8bd228983f2c'

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
