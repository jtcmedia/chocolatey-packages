﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/da0c3ee78ee0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.1.12f1.exe'
$checksum64     = '2fa264ef369883f2dfd9bf316f8193803d26e59dc960ca81d4cae6942dbf5b56'

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
