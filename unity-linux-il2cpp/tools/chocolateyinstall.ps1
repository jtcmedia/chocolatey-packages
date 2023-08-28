$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b5eafc012955/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.8f1.exe'
$checksum64     = '0b39c8796b1e7b9c5788a628ed9722ade925a7b023a6f545889227d0927fde2a'

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
