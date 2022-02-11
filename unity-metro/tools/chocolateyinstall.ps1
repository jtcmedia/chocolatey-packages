$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e50cafbb4399/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.2.11f1.exe'
$checksum64     = '21465d7d913b2c0ea855cfc55c8e3e6fa207c8d48ffeca399a3221be46a80c24'

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
