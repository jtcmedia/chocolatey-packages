$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0e25a174756c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.20f1.exe'
$checksum64     = 'e857f7c3b12b221403bfbb722234ffa3c8e59750b1ac16b8caceb158cf5ea5bb'

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
