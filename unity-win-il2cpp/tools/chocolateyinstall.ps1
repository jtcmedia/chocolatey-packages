﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ed7f6eacb62e/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.58f1.exe'
$checksum64     = '3da1d6c3a85558bf8e2070e15308c46e026814366084b6fac43925457ef1bfff'

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
