$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c7638eb16d91/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.3f1.exe'
$checksum64     = '413449f418fc2988b370cdb95d2bc90c6f5ae279d78233deed9bc6803a7498a7'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
