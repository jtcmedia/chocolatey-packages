﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/17028576122a/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.5f1.exe'
$checksum64     = 'dccba23027b410b31644679bb2f9bdd74b1e11fbab7e1cc7d8ba8f939a0207c8'

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
