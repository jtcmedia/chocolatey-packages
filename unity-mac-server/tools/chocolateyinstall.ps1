﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4ff56b3ea44c/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.0f1.exe'
$checksum64     = 'c3967ed4a478cfd7af7002543d1f61d9833cf8848001bf48458ac394600949b7'

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
