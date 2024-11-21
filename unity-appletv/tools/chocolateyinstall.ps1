$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/df4e529d20d3/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.53f1.exe'
$checksum64     = 'fa5c6ed92d5a5ce4b4e41bfde90e2b3598a0941a7d89af237073bd0c6b5494c5'

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
