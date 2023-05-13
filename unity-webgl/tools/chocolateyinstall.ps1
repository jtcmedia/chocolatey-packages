$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/765657fe9343/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.2.19f1.exe'
$checksum64     = '47aa2c3240c91b46409e9dc673b5de08745f6c942f657bb8098625ef709282a9'

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
