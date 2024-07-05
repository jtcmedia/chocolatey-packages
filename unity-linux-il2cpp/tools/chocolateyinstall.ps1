﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1490908003ac/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.9f1.exe'
$checksum64     = '1eee07c7d708187e80a730843b1d1edbb72d3f57baf4a680c0ea5c5b7b01103f'

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
