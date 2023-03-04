$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/577897200b8b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.20f1.exe'
$checksum64     = '54befc917e430efb68d4e624b36d551ebb527cf411e6e1f881b4b3dc3b05cab1'

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
